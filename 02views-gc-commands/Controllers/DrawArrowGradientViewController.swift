//
//  DrawArrowGradientViewController.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 8/27/22.
//

import UIKit

class DrawArrowGradientViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        let arrow = ArrowGradientView()
        self.view.addSubview(arrow)
        arrow.frame = CGRect(x: 0,y: 0,width: 300,height: 300)
        arrow.layer.borderWidth = 2
        arrow.layer.borderColor = UIColor.red.cgColor
        arrow.setNeedsLayout()
      //  arrow.contentMode = .
        arrow.contentMode = .topLeft
        Task {
           try await Task.sleep(nanoseconds:4000000000)
            arrow.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        }
    }
    

  
}
