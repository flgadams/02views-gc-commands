//
//  DrawArrowRotateViewController.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 9/1/22.
//

import UIKit

class DrawArrowRotateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        let arrow = ArrowRotateView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        self.view.addSubview(arrow)
        arrow.contentMode = .topLeft
        
    }
    


}
