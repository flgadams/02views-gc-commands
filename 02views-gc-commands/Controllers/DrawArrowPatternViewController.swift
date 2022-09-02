//
//  DrawArrowPatternViewController.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 8/30/22.
//

import UIKit

class DrawArrowPatternViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .yellow
        // Do any additional setup after loading the view.
        
        let arrow = ArrowPatternView()
        self.view.addSubview(arrow)
        arrow.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
    }
    

}
