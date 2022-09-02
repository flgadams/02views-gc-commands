//
//  ArrowGradientView.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 8/27/22.
//

import UIKit

class ArrowGradientView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        isOpaque = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    override func draw(_ rect: CGRect) {
        // obtain the current graphics context
        let gc = UIGraphicsGetCurrentContext()!
        
        // big box
        gc.move(to: CGPoint(x: 200, y: 10))
        gc.addLine(to: CGPoint(x: 200, y: 75))
        gc.addLine(to: CGPoint(x: 275, y: 75))
        gc.addLine(to: CGPoint(x: 275, y: 10))
        gc.closePath()
        gc.addRect(gc.boundingBoxOfClipPath) // the points path count will be 2 (even)
        gc.clip(using:.evenOdd) // marks the big box  an exterior (not to filled)

        // draw a vertical line through big box, but there will be a gap in middle due to clip
        gc.move(to: CGPoint(x: 225, y: 0))
        gc.addLine(to: CGPoint(x: 225,y: 105))
        gc.setLineWidth(15)
        gc.strokePath()
        // draw a second vertical  line. it also has a gap
        gc.move(to: CGPoint(x: 255, y: 0))
        gc.addLine(to: CGPoint(x: 255,y: 105))
        gc.setLineWidth(15)
        gc.strokePath()
        
        // punch triangular hole tail  in context clipping region
        
        // draw tail triangle
        gc.move(to:CGPoint(x: 90, y: 100))
        gc.addLine(to:CGPoint(x: 100, y: 90))
        gc.addLine(to:CGPoint(x: 110, y: 100))
        gc.closePath()
        gc.addRect(gc.boundingBoxOfClipPath) // a rays point count will be 2
        gc.clip(using:.evenOdd) // marks the triangle as exterior (not to filled)

        //puch a square above it
        gc.move(to: CGPoint(x: 95, y: 50))
        gc.addLine(to: CGPoint(x: 95, y: 40))
        gc.addLine(to: CGPoint(x: 105, y: 40))
        gc.addLine(to: CGPoint(x: 105, y: 50))
        gc.closePath()
        gc.addRect(gc.boundingBoxOfClipPath) // a rectangle the entire size of the screen
        gc.clip(using: .evenOdd)
  
        // draw the vertical line, add its shape to the clipping region
        gc.move(to:CGPoint(x: 100, y: 100))
        gc.addLine(to:CGPoint(x: 100, y: 19))
        gc.setLineWidth(20)// was 200
        gc.replacePathWithStrokedPath()
        // Why no add rectangle here ???
        gc.clip()  // this is filled  black so must be interior ?why no even odd?
        
        // setup for the gradient
        let locs : [CGFloat] = [ 0.0, 0.5, 1.0 ] // these are percentages of width. 0 - 100
        let colors : [CGFloat] = [
            0.8, 0.4, // starting color, transparent light gray
            0.1, 0.5, // intermediate color, darker less transparent gray
            0.8, 0.4, // ending color, transparent light gray
        ]
        let sp = CGColorSpaceCreateDeviceGray()
        let grad =
            CGGradient(colorSpace:sp,
                       colorComponents: colors,
                       locations: locs,
                       count: 3)!
        
        // somehow stripes the trunk of the arrow entire length
        gc.drawLinearGradient(grad,
                               start: CGPoint(x: 89,y: 0),
                               end: CGPoint(x: 111,y: 0),
                              options:[])
        //without the reset you only get the base of the top red triangle
         gc.resetClip() // new in iOS 11? but works in iOS 10 too so maybe always existed?

        // ga the arrow trunk is 90 - 110
        // draw the red triangle, the point of the arrow, on top of the trunk
        gc.setFillColor(UIColor.red.cgColor)
        gc.move(to:CGPoint(x: 80, y: 25))
        gc.addLine(to:CGPoint(x: 100, y: 0))
        gc.addLine(to:CGPoint(x: 120, y: 25))
        gc.fillPath()
        

        
    }
    
    //-------------------------------------------------------------------------------------
    //
       // gc.addRect(gc.boundingBoxOfClipPath)
       // gc.clip(using: .evenOdd)
        
        
        // CODE FROM THE BOOK IS WRONG
        // TRUNK OF ARROW TOO FAR TO LEFT
        // DITTO THE PUCHED TRIANGLE AT BOTTOM OF TRUNK
        
        /*
        // obtain the current graphics context
        let con = UIGraphicsGetCurrentContext()!
        // punch triangular hole in context clipping region
        con.move(to:CGPoint(x: 10, y: 100))
        con.addLine(to:CGPoint(x: 20, y: 90))
        con.addLine(to:CGPoint(x: 30, y: 100))
        con.closePath()
        con.addRect(con.boundingBoxOfClipPath)
        con.clip(using: .evenOdd)
        // ERROR! this is too far to the left
         // THAT IS WHY HIS DIDN'T WORK !!!
        // draw the vertical line, add its shape to the clipping region
        con.move(to:CGPoint(x: 20, y: 100))
        con.addLine(to:CGPoint(x: 20, y: 19))
        con.setLineWidth(20)
        //con.strokePath()
        con.replacePathWithStrokedPath()  //remove this and uncomment next
        //con.strokePath()  // me, it shows the stem of the arrow
        con.clip()
        
        // draw the gradient
        let locs : [CGFloat] = [ 0.0, 0.5, 1.0 ]
        let colors : [CGFloat] = [
            0.8, 0.4, // starting color, transparent light gray
            0.1, 0.5, // intermediate color, darker less transparent gray
            0.8, 0.4, // ending color, transparent light gray
        ]
        let sp = CGColorSpaceCreateDeviceGray()
        let grad = CGGradient(
            colorSpace:sp, colorComponents: colors, locations: locs, count: 3)!
        con.drawLinearGradient(grad,
                               start: CGPoint(x: 89,y: 0), end: CGPoint(x: 111,y: 0), options:[])
        con.resetClip() // done clipping
        
        
        // draw the red triangle, the point of the arrow
        con.setFillColor(UIColor.red.cgColor)
        con.move(to:CGPoint(x: 80, y: 25))
        con.addLine(to:CGPoint(x: 100, y: 0))
        con.addLine(to:CGPoint(x: 120, y: 25))
        con.fillPath()

        */
    
    
  
}
