//
//  ArrowPatternView.swift
//  02views-gc-commands
//
//  Created by Glenn Adams on 8/30/22.
//

import UIKit

class ArrowPatternView: UIView {

   
    override init(frame: CGRect) {
        super.init(frame: frame)
        isOpaque = false

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    override func draw(_ rect: CGRect) {
        // arrow with a striped tip
        let render = UIGraphicsImageRenderer(size: CGSize(width: 4, height: 4))
        let bitmap = render.image {
            ctx in
            let gc = ctx.cgContext
            gc.setFillColor(UIColor.red.cgColor)
            // paint the whole bitmap red
            gc.fill(CGRect(x: 0, y:0 , width: 4, height: 4))
            gc.setFillColor((UIColor.blue.cgColor))
            //print the top half blue
            gc.fill(CGRect(x: 0, y: 0, width: 2, height: 2))
        }
        
        let stripesPattern = UIColor(patternImage: bitmap)
        stripesPattern.setFill()
        let p = UIBezierPath()
        p.move(to: CGPoint(x: 80,y: 225))
        p.addLine(to: CGPoint(x: 100,y: 200))
        p.addLine(to: CGPoint(x: 120,y: 225))
        p.fill()
        
        
    }
    

}
