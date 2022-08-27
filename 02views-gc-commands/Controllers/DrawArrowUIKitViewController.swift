//
//  DrawArrowUIKitViewController.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 8/25/22.
//

import UIKit

class DrawArrowUIKitViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        
        let arrowView = ArrowUIKitView()
        self.view.addSubview(arrowView)
        arrowView.frame = CGRect(x: 50,y: 50,width: 200,height: 200)
        arrowView.autoresizingMask = [.flexibleLeftMargin, .flexibleRightMargin]
        print(arrowView.bounds)
        
        
    }
    

 
}
