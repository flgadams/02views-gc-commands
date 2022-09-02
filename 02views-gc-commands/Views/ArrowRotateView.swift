//
//  ArrowRotateView.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 8/30/22.
//

import UIKit
// draw 4 arrows at  0 deg, 90 deg and 2 in between
class ArrowRotateView: UIView {

    lazy var arrow : UIImage = {

        let r = UIGraphicsImageRenderer(size:CGSize(width: 40,height: 100))
        let customArrowImage = r.image {
            _ in
            self.arrowImage()
        }
        return customArrowImage
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        isOpaque = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        let con = UIGraphicsGetCurrentContext()!
        
        // add the shadow at the arrow tip. the bigger the number the further from the tip is the shadow
        con.setShadow(offset: CGSize(width: 7, height: 7), blur: 12)

        // So arrows can't cast shadows on shadows 
        con.beginTransparencyLayer(auxiliaryInfo: nil)

        // first time is with no translation applied
        self.arrow.draw(at:CGPoint(x: 0,y: 0)) // Draw the arrow at zero deg (straight up)
        
        // draw 3 more
        
        for _ in 0..<5 {
            
            // if you just do the top translate, you get 4 arrows left to right
            con.translateBy(x: 20, y: 100) // start the origin at the base of the arrow (20 across, 100 down)
            con.rotate(by: 30 * .pi/180.0)  // rotate around the origin, this is additive
            con.translateBy(x: -20, y: -100) // set the orign back to top left , we subtract each time because
                                            // the point of rotation must be the same each time
            
            self.arrow.draw(at:CGPoint(x: 0,y: 0)) // THIS STILL SAYS 0,0 but the coordinates are transformed
        }
        
        con.endTransparencyLayer() // Why ? 
         
    }
    
    func arrowImage () {
        let gc = UIGraphicsGetCurrentContext()!
        gc.saveGState() // save the current context and make gc the current context
        
        // punch triangular hole in context clipping region
        gc.move(to: CGPoint(x: 10, y: 100))
        gc.addLine(to: CGPoint(x: 20, y: 90))
        gc.addLine(to: CGPoint(x: 30, y: 100))
        gc.closePath()
        gc.addRect(gc.boundingBoxOfClipPath)
        gc.clip(using: .evenOdd) // mark the triangle as EXTERIOR so it will not be filled
        
        // draw the vertical line, add its shape to the clipping region
        gc.move(to: CGPoint(x: 20, y: 100))
        gc.addLine(to: CGPoint(x: 20, y: 19))
        gc.setLineWidth(20)
        gc.replacePathWithStrokedPath()
        gc.clip() // mark the arrow body as INTERIOR, it will be stroked
        
        // draw the gradient
        let locs : [CGFloat] = [ 0.0, 0.5, 1.0 ]
        let colors : [CGFloat] = [
            0.8, 0.4, // starting color, transparent light gray
            0.1, 0.5, // intermediate color, darker less transparent gray
            0.8, 0.4, // ending color, transparent light gray
        ]
        let sp = CGColorSpaceCreateDeviceGray()
        let grad =
            CGGradient(colorSpace:sp, colorComponents: colors, locations: locs, count: 3)!
        gc.drawLinearGradient(grad, start: CGPoint(x: 9,y: 0), end: CGPoint(x: 31,y: 0), options: [])
        
        gc.restoreGState() // done clipping
        
        // draw the red triangle, the point of the arrow
        let r = UIGraphicsImageRenderer(size:CGSize(width: 4,height: 4))
        let stripes = r.image {
            ctx in
            let imcontext = ctx.cgContext
            imcontext.setFillColor(UIColor.red.cgColor)
            imcontext.fill(CGRect(x: 0,y: 0,width: 4,height: 4))
            imcontext.setFillColor(UIColor.blue.cgColor)
            imcontext.fill(CGRect(x: 0,y: 0,width: 4,height: 2))
        }
        
        let stripesPattern = UIColor(patternImage:stripes)
        stripesPattern.setFill()
        let p = UIBezierPath()
        p.move(to:CGPoint(x: 0,y: 25))
        p.addLine(to:CGPoint(x: 20,y: 0))
        p.addLine(to:CGPoint(x: 40,y: 25))
        p.fill()
        
    }
    

}

/*
 
 
 import UIKit

 extension CGRect {
     init(_ x:CGFloat, _ y:CGFloat, _ w:CGFloat, _ h:CGFloat) {
         self.init(x:x, y:y, width:w, height:h)
     }
 }
 extension CGSize {
     init(_ width:CGFloat, _ height:CGFloat) {
         self.init(width:width, height:height)
     }
 }
 extension CGPoint {
     init(_ x:CGFloat, _ y:CGFloat) {
         self.init(x:x, y:y)
     }
 }


 class MyView : UIView {
     
     override init (frame:CGRect) {
         super.init(frame:frame)
         self.isOpaque = false
     }

     required init(coder: NSCoder) {
         fatalError("NSCoding not supported")
     }
     
     lazy var arrow : UIImage = {
 
         let r = UIGraphicsImageRenderer(size:CGSize(40,100))
         return r.image {
             _ in
             self.arrowImage()
         }
     }()
 
 
     
  
     
     func arrowImage () {
         
         // obtain the current graphics context
         let con = UIGraphicsGetCurrentContext()!
         con.saveGState()
         
         // punch triangular hole in context clipping region
         con.move(to: CGPoint(10, 100))
         con.addLine(to: CGPoint(20, 90))
         con.addLine(to: CGPoint(30, 100))
         con.closePath()
         con.addRect(con.boundingBoxOfClipPath)
         con.clip(using: .evenOdd)
         
         // draw the vertical line, add its shape to the clipping region
         con.move(to: CGPoint(20, 100))
         con.addLine(to: CGPoint(20, 19))
         con.setLineWidth(20)
         con.replacePathWithStrokedPath()
         con.clip()
         
         // draw the gradient
         let locs : [CGFloat] = [ 0.0, 0.5, 1.0 ]
         let colors : [CGFloat] = [
                                      0.8, 0.4, // starting color, transparent light gray
             0.1, 0.5, // intermediate color, darker less transparent gray
             0.8, 0.4, // ending color, transparent light gray
         ]
         let sp = CGColorSpaceCreateDeviceGray()
         let grad =
             CGGradient(colorSpace:sp, colorComponents: colors, locations: locs, count: 3)!
         con.drawLinearGradient(grad, start: CGPoint(9,0), end: CGPoint(31,0), options: [])
         
         con.restoreGState() // done clipping
         
         // draw the red triangle, the point of the arrow
         let r = UIGraphicsImageRenderer(size:CGSize(4,4))
         let stripes = r.image {
             ctx in
             let imcon = ctx.cgContext
             imcon.setFillColor(UIColor.red.cgColor)
             imcon.fill(CGRect(0,0,4,4))
             imcon.setFillColor(UIColor.blue.cgColor)
             imcon.fill(CGRect(0,0,4,2))
         }
         
         let stripesPattern = UIColor(patternImage:stripes)
         stripesPattern.setFill()
         let p = UIBezierPath()
         p.move(to:CGPoint(0,25))
         p.addLine(to:CGPoint(20,0))
         p.addLine(to:CGPoint(40,25))
         p.fill()
         
     }
     
     let which = 1

     override func draw(_ rect: CGRect) {

         switch which {
             
         case 1:
             let con = UIGraphicsGetCurrentContext()!
             self.arrow.draw(at:CGPoint(0,0))
             
             for _ in 0..<3 {
                 con.translateBy(x: 20, y: 100)
                 con.rotate(by: 30 * .pi/180.0)
                 con.translateBy(x: -20, y: -100)
                 self.arrow.draw(at:CGPoint(0,0))
             }
             
         case 2:
             let con = UIGraphicsGetCurrentContext()!
             con.setShadow(offset: CGSize(7, 7), blur: 12)
             
             self.arrow.draw(at:CGPoint(0,0))
             
             for _ in 0..<3 {
                 con.translateBy(x: 20, y: 100)
                 con.rotate(by: 30 * .pi/180.0)
                 con.translateBy(x: -20, y: -100)
                 self.arrow.draw(at:CGPoint(0,0))
             }
             
         case 3:
             let con = UIGraphicsGetCurrentContext()!
             con.setShadow(offset: CGSize(7, 7), blur: 12)
             
             con.beginTransparencyLayer(auxiliaryInfo: nil)
             self.arrow.draw(at:CGPoint(0,0))
             for _ in 0..<3 {
                 con.translateBy(x: 20, y: 100)
                 con.rotate(by: 30 * .pi/180.0)
                 con.translateBy(x: -20, y: -100)
                 self.arrow.draw(at:CGPoint(0,0))
             }
             con.endTransparencyLayer()

         default: break
         }
         
     }
     
     deinit { print("farewell") }
     
 }

 */
