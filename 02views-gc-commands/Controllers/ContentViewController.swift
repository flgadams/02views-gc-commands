//
//  ContentViewController.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 9/1/22.
//

import UIKit

class ContentViewController: UIViewController {

    /*
     
     We double the height of the view without causing draw(_:) to be called. The result is that the view’s drawing appears at double its correct height.

     Neuburg, Matt. Programming iOS 14 . O'Reilly Media. Kindle Edition. 
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        let v1 = ContentView(frame: CGRect(x: 50, y: 100, width: 150, height: 150))
        self.view.addSubview(v1)
        
//        v1.contentMode = .redraw  // IF REDRAW MODE IS ON, THE DRAW() IS CALLED WHEN THE
                                // LAYER IS STRETCHED. THERE ARE 13 MODES
                                // IF ONE OF THE SCALING MODES IS SET, DRAW IS NOT CALLED
                                // INSTEAD THE IOS RUNTIME WILL SHRINK OR STRETCH
                                // THE BITMAP BEST IT CAN BASED BASED ON THE MODE
        print(v1.contentMode)
        delay(0.4) {
            // THE SYSTEM STRETCHES THE DRAWNING WITHOUT CALLING "DRAW" BECAUSE OF THE
            // CONTENT MODE SETTING WHICH DEFAULTS TO RUNTIME SHRINK/GROW
            // BUT OUR DRAW() SPECIFIED AN ABSOLUTE HEIGHT/WIDTH, SO ARROW
            // IS STRETCHED !
            v1.bounds.size.height *= 2
        }
        
        
        Task {
            try await Task.sleep(nanoseconds: 4000000000)
            v1.setNeedsDisplay() //FORCES DRAW TO BE CALLED. IMAGE WILL BE DRAWN IN ORIGINAL SIZE
        }
         
    }
    
   
    func delay(_ delay:Double, closure: @escaping ()->()) {
        let when = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
    }

    
    
}
