//
//  DrawArrowCGViewController.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 8/25/22.
//

import UIKit

class DrawArrowCGBlendViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
   
        let arrowView = ArrowCGBlendView(frame: CGRect(x: 0, y: 50, width: 200, height: 200))
        self.view.addSubview(arrowView)
        
    }
    


}
