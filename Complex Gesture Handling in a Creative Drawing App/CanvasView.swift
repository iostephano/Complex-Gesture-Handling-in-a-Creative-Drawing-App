//
//  CanvasView.swift
//  Complex Gesture Handling in a Creative Drawing App
//
//  Created by Stephano Portella on 05/04/25.
//
import UIKit

class CanvasView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        isUserInteractionEnabled = true
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .white
        isUserInteractionEnabled = true
    }
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }

        let gridSize: CGFloat = 20.0
        context.setLineWidth(0.5)
        context.setStrokeColor(UIColor.lightGray.cgColor)

        // Drawing vertical lines
        var x: CGFloat = 0
        while x <= rect.width {
            context.move(to: CGPoint(x: x, y: 0))
            context.addLine(to: CGPoint(x: x, y: rect.height))
            x += gridSize
        }

        // Drawing horizontal lines
        var y: CGFloat = 0
        while y <= rect.height {
            context.move(to: CGPoint(x: 0, y: y))
            context.addLine(to: CGPoint(x: rect.width, y: y))
            y += gridSize
        }

        context.strokePath()
    }
}

