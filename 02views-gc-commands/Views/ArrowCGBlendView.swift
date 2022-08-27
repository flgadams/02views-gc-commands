//
//  ArrowCGView.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 8/25/22.
//

import UIKit

class ArrowCGBlendView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        isOpaque = false
        print("init...")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        print("draw the trunk ...")
        //Default color is black
        let gc = UIGraphicsGetCurrentContext()!
        gc.move(to: CGPoint(x: 100, y: 100))
        gc.addLine(to: CGPoint(x: 100, y: 19))
        gc.setLineWidth(20)
        gc.strokePath()
        // Add the triangle hat
        gc.setFillColor(UIColor.red.cgColor)
        gc.move(to: CGPoint(x: 80, y: 25))
        gc.addLine(to: CGPoint(x: 100, y: 0))
        gc.addLine(to: CGPoint(x: 120, y: 25))
        gc.fillPath()
        //Make a triangular portion of the stem CLEAR so it looks like an arrow tail
        gc.move(to: CGPoint(x: 90, y: 101))
        gc.addLine(to: CGPoint(x: 100, y: 90))
        gc.addLine(to: CGPoint(x: 110, y: 101))
        gc.setBlendMode(.clear)
        gc.fillPath() //WITH UIKIT you would use  p.fill(with: .clear, alpha: 1.0)

    }
    

}
