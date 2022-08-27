//
//  ArrowClippedView.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 8/26/22.
//

import UIKit

class ArrowClippingView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        isOpaque = false
        backgroundColor = .gray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
       /*
        
        This rule determines the "insideness" of a point on the canvas by drawing a ray from that point to infinity in any direction and counting the number of path segments from the given shape that the ray crosses. If this number is odd, the point is inside and should be filled; if even, the point is outside.
        
             Example: a ray from a point insied the tail will pass 2 paths (the triangle, and the bouding box
             This is a a even number. so it is outside, not filled
        points="50,0  21,90  98,35  2,35  79,90"/>
        */
        
        let gc = UIGraphicsGetCurrentContext()!
        /*
        gc.move(to:CGPoint(x:50 , y:0 ))
        gc.addLine(to:CGPoint(x: 21, y: 90))
        gc.addLine(to: CGPoint(x: 98,y: 35))
        gc.addLine(to: CGPoint(x: 2,y: 35))
        gc.addLine(to: CGPoint(x: 79,y: 90))
        gc.closePath()
        gc.addRect(gc.boundingBoxOfClipPath)
        gc.strokePath()
        gc.clip(using:.evenOdd)
         
        gc.setFillColor(UIColor.red.cgColor)
        gc.fillPath()
        */
        // a ray emanating from inside the triangle will pass through 2 paths
        // The triangle path and the boundinb box (permimeter of the view rect)
        // since 2 is an even number, that area is considered ExTERNAL
        gc.move(to:CGPoint(x: 90, y: 100))
        gc.addLine(to:CGPoint(x: 100, y: 90))
        gc.addLine(to:CGPoint(x: 110, y: 100))
        gc.closePath()
        gc.addRect(gc.boundingBoxOfClipPath) // without this, only black tip of arrow
        print(gc.boundingBoxOfClipPath) // excludes the triangle tail from stroking and filling
        gc.clip(using:.evenOdd)  // this blocks any filling in the triangle
        // draw the fat vertical line
        // even though it would cover the triange, it doesn't
        gc.move(to:CGPoint(x: 100, y: 100)) // This is over the tail triangle !
        gc.addLine(to:CGPoint(x: 100, y: 19))
        gc.setLineWidth(20)
        gc.strokePath()
        
        // draw the red triangle, the point of the arrow
        gc.setFillColor(UIColor.red.cgColor)
        gc.move(to:CGPoint(x: 80, y: 25))
        gc.addLine(to:CGPoint(x: 100, y: 0))
        gc.addLine(to:CGPoint(x: 120, y: 25))
         
        gc.fillPath()
        
        // This horizontal line will exclue the tail triangle either when stroked !
        gc.move(to: CGPoint(x: 0, y: 100))
        gc.addLine(to: CGPoint(x: 200, y: 100))
        gc.setLineWidth(20)
        gc.strokePath()
        
    }
}
