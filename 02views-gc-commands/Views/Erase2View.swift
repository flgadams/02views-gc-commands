//
//  Erase2View.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 9/1/22.
//

import UIKit

class Erase2View: UIView {

    override func draw(_ rect: CGRect) {
        
        let gc = UIGraphicsGetCurrentContext()!
        let fc = UIColor.blue
        gc.setFillColor(fc.cgColor)
        gc.fill(rect)
        gc.clear(CGRect(x: 0,y: 0,width: 30,height: 30))
        
        
        
        
    }
}
