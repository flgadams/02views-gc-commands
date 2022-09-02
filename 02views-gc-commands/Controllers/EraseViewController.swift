//
//  EraseViewController.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 9/1/22.
//

import UIKit

class EraseViewController: UIViewController {
    // MORAL OF THE STORY IS SET THE LAYER.ISOPAQUE TO FALSE SO THE CLEAR WILL LET THE BG SHOW
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemYellow
        
        let v1 = EraseView(frame: CGRect(x: 50,y: 50,width: 150,height: 150))
        v1.backgroundColor = .red
        v1.layer.isOpaque = false // WITHOUT THIS THE CUT OUT IS BLACK
                                // WITH IT, THE CUT OUT IS TRANSPARENT AND LETS THE YELLOW SHOW
        self.view.addSubview(v1)
        
        // HAVING A PARTIALLY TRANSPARENT BG IN THIS CASE LETS THE YELLOW SHOW THROUGH, (NOT BLACK)
        let v2 = Erase2View(frame: CGRect(x: 50,y: 200,width: 150,height: 150))
        let bc = UIColor(displayP3Red: 0.99, green: 0, blue: 0, alpha: 0)
        v2.backgroundColor = bc
        v2.layer.isOpaque = false
        self.view.addSubview(v2 )
    }
    

   

}
