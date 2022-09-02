//
//  ContentView.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 9/1/22.
//

import UIKit

class ContentView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.isOpaque = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        print("in draw..")
        let p = UIBezierPath()

        p.move(to: CGPoint(x: 100,y: 100))
        p.addLine(to: CGPoint(x: 100,y: 19))
        p.lineWidth = 20
        p.stroke()
 
        // Triangle tip of the top of arrow
        UIColor.red.set()
        p.removeAllPoints()
        p.move(to: CGPoint(x: 80,y: 25))
        p.addLine(to: CGPoint(x: 120,y: 25))
        p.addLine(to: CGPoint(x: 100,y: 0))
        p.fill()
        // Draw a triangle at the bottom of the arrow trunk and make it transparent
        // by filling it with a "Clear" transparent color
        p.removeAllPoints()
        p.move(to: CGPoint(x: 90,y: 101))
        p.addLine(to: CGPoint(x: 100,y: 90))
        p.addLine(to: CGPoint(x: 110,y: 101))
        p.fill(with: .clear, alpha: 1.0)  // WITH CG GC YOU WOULD USE SET BLEND MODE TO CLEAR
        
        
        
        
        
    }
   
    

}
