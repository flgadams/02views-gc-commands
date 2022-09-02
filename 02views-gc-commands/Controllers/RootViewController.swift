//
//  ViewController.swift
//  template-swift-no-sb
//
//  Created by Glenn Adams on 7/30/22.
// A Swift project template for UIKit apps, no storyboards

import UIKit

class RootViewController: UIViewController {
    
    //MARK: - UI
    
    lazy var drawArrowCGButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("Draw Arrow WIth CG methods", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(drawArrowCGButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func drawArrowCGButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(DrawArrowCGBlendViewController(), animated: true)
    
        
    }
    lazy var drawArrowUIKitButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("Draw Arrow WIth UIKit", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(drawArrowUIKitButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func drawArrowUIKitButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        
        present(DrawArrowUIKitViewController(), animated: true)
        
    }
    lazy var drawArrowCGClippingButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("Draw Arrow w/ CG CLipping", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(drawArrowCGClippingButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func drawArrowCGClippingButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(DrawArrowCGClippingViewController(), animated: true)
        
    }
    lazy var gradientButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("Gradient", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(gradientButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func gradientButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(DrawArrowGradientViewController(), animated: true)
    }
    lazy var uiPatternButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("UIKit pattern", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(uipatternButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func uipatternButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(DrawArrowPatternViewController(), animated: true)
    }
    lazy var cgPatternButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("CG Pattern", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(cgPatternButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func cgPatternButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        
    }
    lazy var contentButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("Content ", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(shadowsButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func shadowsButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(ContentViewController(), animated: true)
        
    }
    lazy var eraseButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("Erase", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(eraseButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func eraseButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(EraseViewController(), animated: true)
    }
    lazy var arrowRotateButton:UIButton = {  //snip zxuibtnl
        let ui = UIButton(type: .system)
        ui.setTitle("Arrow Rotate, add shadow, transparency", for: .normal)
        ui.titleLabel?.font = .systemFont(ofSize: 20)
        ui.setTitleColor(UIColor.white, for: UIControl.State.normal)
        ui.backgroundColor = UIColor.orange
        ui.layer.borderWidth = 1
        ui.layer.cornerRadius = 16
        ui.addTarget(self, action: #selector(arrowRotateButtonTouchSelector), for: .touchUpInside)
        return ui
    }()
    @objc fileprivate func arrowRotateButtonTouchSelector(sender:Any) {
        let file = "\(#file)".components(separatedBy: "/").last!; NSLog("\n\u{2705} \(#function) Line \(#line) of \(file)\n")
        present(DrawArrowRotateViewController(), animated: true)
        
    }
    
   //MARK: - LIFECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray
        
        for (i,b) in [drawArrowCGButton, drawArrowUIKitButton,drawArrowCGClippingButton,
                    gradientButton,uiPatternButton,cgPatternButton,contentButton,eraseButton,
                    arrowRotateButton].enumerated() {
            self.view.addSubview(b)
            b.frame = CGRect(x: 0, y: 50 + i * 50, width: Int(self.view.bounds.width), height: 50)
            b.autoresizingMask = [.flexibleWidth]
        }
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
     
     override init(frame: CGRect) {
         super.init(frame:frame)
         self.isOpaque = false
     }
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
     
     
     let which = 5
     
     override func draw(_ rect: CGRect) {
         print("draw")
         switch which {
         case 1:
             let con = UIGraphicsGetCurrentContext()!
             
             // draw a black (by default) vertical line, the shaft of the arrow
             con.move(to:CGPoint(100, 100))
             con.addLine(to:CGPoint(100, 19))
             con.setLineWidth(20)
             con.strokePath()
             
             // draw a red triangle, the point of the arrow
             con.setFillColor(UIColor.red.cgColor)
             con.move(to:CGPoint(80, 25))
             con.addLine(to:CGPoint(100, 0))
             con.addLine(to:CGPoint(120, 25))
             con.fillPath()
             
             // snip a triangle out of the shaft by drawing in Clear blend mode
             con.move(to:CGPoint(90, 101))
             con.addLine(to:CGPoint(100, 90))
             con.addLine(to:CGPoint(110, 101))
             con.setBlendMode(.clear)
             con.fillPath()
             
         case 2:
             let p = UIBezierPath()
             // shaft
             p.move(to:CGPoint(100,100))
             p.addLine(to:CGPoint(100, 19))
             p.lineWidth = 20
             p.stroke()
             // point
             UIColor.red.set()
             p.removeAllPoints()
             p.move(to:CGPoint(80,25))
             p.addLine(to:CGPoint(100, 0))
             p.addLine(to:CGPoint(120, 25))
             p.fill()
             // snip
             p.removeAllPoints()
             p.move(to:CGPoint(90,101))
             p.addLine(to:CGPoint(100, 90))
             p.addLine(to:CGPoint(110, 101))
             p.fill(with:.clear, alpha:1.0)
             
         case 3:
             
             // obtain the current graphics context
             let con = UIGraphicsGetCurrentContext()!
             
             // punch triangular hole in context clipping region
             con.move(to:CGPoint(90, 100))
             con.addLine(to:CGPoint(100, 90))
             con.addLine(to:CGPoint(110, 100))
             con.closePath()
             con.addRect(con.boundingBoxOfClipPath)
             con.clip(using:.evenOdd)
             
             // draw the vertical line
             con.move(to:CGPoint(100, 100))
             con.addLine(to:CGPoint(100, 19))
             con.setLineWidth(20)
             con.strokePath()
             
             // draw the red triangle, the point of the arrow
             con.setFillColor(UIColor.red.cgColor)
             con.move(to:CGPoint(80, 25))
             con.addLine(to:CGPoint(100, 0))
             con.addLine(to:CGPoint(120, 25))
             con.fillPath()
             
         case 4:
             // obtain the current graphics context
             let con = UIGraphicsGetCurrentContext()!
             //con.saveGState()
             
             // punch triangular hole in context clipping region
             con.move(to:CGPoint(90, 100))
             con.addLine(to:CGPoint(100, 90))
             con.addLine(to:CGPoint(110, 100))
             con.closePath()
             con.addRect(con.boundingBoxOfClipPath)
             con.clip(using:.evenOdd)
             
             // draw the vertical line, add its shape to the clipping region
             con.move(to:CGPoint(100, 100))
             con.addLine(to:CGPoint(100, 19))
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
             // print(CGColorSpaceGetNumberOfComponents(sp))
             let grad =
                 CGGradient(colorSpace:sp, colorComponents: colors, locations: locs, count: 3)!
             con.drawLinearGradient(grad, start: CGPoint(89,0), end: CGPoint(111,0), options:[])
             
             //con.restoreGState() // done clipping
             con.resetClip() // new in iOS 11? but works in iOS 10 too so maybe always existed?
             
             // draw the red triangle, the point of the arrow
             con.setFillColor(UIColor.red.cgColor)
             con.move(to:CGPoint(80, 25))
             con.addLine(to:CGPoint(100, 0))
             con.addLine(to:CGPoint(120, 25))
             con.fillPath()
             
         case 5:
             // obtain the current graphics context
             let con = UIGraphicsGetCurrentContext()!
             con.saveGState()
             
             // punch triangular hole in context clipping region
             con.move(to:CGPoint(90, 100))
             con.addLine(to:CGPoint(100, 90))
             con.addLine(to:CGPoint(110, 100))
             con.closePath()
             con.addRect(con.boundingBoxOfClipPath)
             con.clip(using:.evenOdd)
             
             // draw the vertical line, add its shape to the clipping region
             con.move(to:CGPoint(100, 100))
             con.addLine(to:CGPoint(100, 19))
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
             con.drawLinearGradient(grad, start: CGPoint(89,0), end: CGPoint(111,0), options: [])
             
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
             
 //            UIGraphicsBeginImageContextWithOptions(CGSize(4,4), false, 0)
 //            let imcon = UIGraphicsGetCurrentContext()!
 //            imcon.setFillColor(UIColor.red().cgColor)
 //            imcon.fill(CGRect(0,0,4,4))
 //            imcon.setFillColor(UIColor.blue().cgColor)
 //            imcon.fill(CGRect(0,0,4,2))
 //            let stripes = UIGraphicsGetImageFromCurrentImageContext()!
 //            UIGraphicsEndImageContext()
             
             let stripesPattern = UIColor(patternImage:stripes)
             stripesPattern.setFill()
             let p = UIBezierPath()
             p.move(to:CGPoint(80,25))
             p.addLine(to:CGPoint(100,0))
             p.addLine(to:CGPoint(120,25))
             p.fill()
             
         case 6:
             
             // obtain the current graphics context
             let con = UIGraphicsGetCurrentContext()!
             con.saveGState()
             
             // punch triangular hole in context clipping region
             con.move(to:CGPoint(90, 100))
             con.addLine(to:CGPoint(100, 90))
             con.addLine(to:CGPoint(110, 100))
             con.closePath()
             con.addRect(con.boundingBoxOfClipPath)
             con.clip(using:.evenOdd)
             
             // draw the vertical line, add its shape to the clipping region
             con.move(to:CGPoint(100, 100))
             con.addLine(to:CGPoint(100, 19))
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
             con.drawLinearGradient (grad, start: CGPoint(89,0), end: CGPoint(111,0), options: [])
             
             con.restoreGState() // done clipping
             
             
             // draw the red triangle, the point of the arrow
             con.saveGState()
             // this bug still present in beta 6 and GM
             // ok seems to be fixed now
             do { // work around iOS 12 bug: force context to have some color!
 //                con.setFillColor(UIColor.blue.cgColor)
 //                con.fill(CGRect(0,0,0,0))
             }
             let sp2 = CGColorSpace(patternBaseSpace:nil)!
             con.setFillColorSpace(sp2)
             // hooray for Swift 2.0!
             let drawStripes : CGPatternDrawPatternCallback = {
                 _, con in
                 con.setFillColor(UIColor.red.cgColor)
                 con.fill(CGRect(0,0,4,4))
                 con.setFillColor(UIColor.blue.cgColor)
                 con.fill(CGRect(0,0,4,2))
             }
             var callbacks = CGPatternCallbacks(
                 version: 0, drawPattern: drawStripes, releaseInfo: nil)
             let patt = CGPattern(info:nil, bounds: CGRect(0,0,4,4),
                                  matrix: .identity,
                                  xStep: 4, yStep: 4,
                                  tiling: .constantSpacingMinimalDistortion,
                                  isColored: true, callbacks: &callbacks)!
             var alph : CGFloat = 1.0
             con.setFillPattern(patt, colorComponents: &alph)
             

             con.move(to:CGPoint(80, 25))
             con.addLine(to:CGPoint(100, 0))
             con.addLine(to:CGPoint(120, 25))
             con.fillPath()
             con.restoreGState()
             
             
         default: break
         }
     }
     
 }

 */


/* DRAW A STAR
 
 //// Star Drawing
 UIBezierPath* starPath = [UIBezierPath bezierPath];
 [starPath moveToPoint: CGPointMake(45.25, 0)];
 [starPath addLineToPoint: CGPointMake(61.13, 23)];
 [starPath addLineToPoint: CGPointMake(88.29, 30.75)];
 [starPath addLineToPoint: CGPointMake(70.95, 52.71)];
 [starPath addLineToPoint: CGPointMake(71.85, 80.5)];
 [starPath addLineToPoint: CGPointMake(45.25, 71.07)];
 [starPath addLineToPoint: CGPointMake(18.65, 80.5)];
 [starPath addLineToPoint: CGPointMake(19.55, 52.71)];
 [starPath addLineToPoint: CGPointMake(2.21, 30.75)];
 [starPath addLineToPoint: CGPointMake(29.37, 23)];
 [starPath closePath];
 [UIColor.redColor setStroke];
 starPath.lineWidth = 1;
 [starPath stroke];
 
 
 */
/*  another way to make a star 
 
 extension CGPoint {
     func pointFrom(angle: CGFloat, radius: CGFloat) -> CGPoint {
         return CGPoint(x: self.x + radius * cos(CGFloat.pi - angle), y: self.y - radius * sin(CGFloat.pi - angle))
     }
 }

 extension UIBezierPath {
     func addStar(rect: CGRect, extrusion: CGFloat, points: Int) {
         self.move(to: CGPoint(x: 0, y: 0))
         let center = CGPoint(x: rect.width / 2.0, y: rect.height / 2.0)
         var angle:CGFloat = -CGFloat.pi / 2.0
         let angleIncrement = CGFloat.pi * 2.0 / CGFloat(points)
         let radius = rect.width / 2.0
         var firstPoint = true
         for _ in 1...points {
             let point = center.pointFrom(angle: angle, radius: radius)
             let nextPoint = center.pointFrom(angle: angle + angleIncrement, radius: radius)
             let midPoint = center.pointFrom(angle: angle + angleIncrement / 2.0, radius: extrusion)
             if firstPoint {
                 firstPoint = false
                 self.move(to: point)
             }
             self.addLine(to: midPoint)
             self.addLine(to: nextPoint)
             angle += angleIncrement
             }
     }
 
 */
