//
//  DrawArrowCGClippingViewController.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 8/25/22.
//

import UIKit

class DrawArrowCGClippingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .orange
        // Do any additional setup after loading the view.
     
        let arrowView = ArrowClippingView()
        self.view.addSubview(arrowView)
        arrowView.frame = CGRect(x: 50,y: 50,width: 200,height: 200)
        
        
        
    }
    


    

}
