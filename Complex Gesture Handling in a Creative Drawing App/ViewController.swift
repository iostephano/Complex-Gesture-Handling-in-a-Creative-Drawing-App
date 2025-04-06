//
//  ViewController.swift
//  Complex Gesture Handling in a Creative Drawing App
//
//  Created by Stephano Portella on 05/04/25.
//
import UIKit

class ViewController: UIViewController {
    
    let canvas = CanvasView()
    var currentTransform: CGAffineTransform = .identity

    override func viewDidLoad() {
        super.viewDidLoad()
        
        canvas.frame = view.bounds
        canvas.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(canvas)
        
        setupGestures()
    }
    
    func setupGestures() {
        // Pinch (Zoom)
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(_:)))
        view.addGestureRecognizer(pinchGesture)
        
        // Rotation
        let rotationGesture = UIRotationGestureRecognizer(target: self, action: #selector(handleRotation(_:)))
        view.addGestureRecognizer(rotationGesture)
        
        // Pan with two fingers
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        panGesture.minimumNumberOfTouches = 2
        view.addGestureRecognizer(panGesture)
        
        // Double tap to reset
        let doubleTapGesture = UITapGestureRecognizer(target: self, action: #selector(handleDoubleTap(_:)))
        doubleTapGesture.numberOfTapsRequired = 2
        view.addGestureRecognizer(doubleTapGesture)
    }
    
    @objc func handlePinch(_ gesture: UIPinchGestureRecognizer) {
        if gesture.state == .changed || gesture.state == .ended {
            canvas.transform = canvas.transform.scaledBy(x: gesture.scale, y: gesture.scale)
            gesture.scale = 1.0
        }
    }

    @objc func handleRotation(_ gesture: UIRotationGestureRecognizer) {
        if gesture.state == .changed || gesture.state == .ended {
            canvas.transform = canvas.transform.rotated(by: gesture.rotation)
            gesture.rotation = 0
        }
    }
    
    @objc func handlePan(_ gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: view)
        if gesture.state == .changed || gesture.state == .ended {
            canvas.transform = canvas.transform.translatedBy(x: translation.x, y: translation.y)
            gesture.setTranslation(.zero, in: view)
        }
    }
    
    @objc func handleDoubleTap(_ gesture: UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.3) {
            self.canvas.transform = .identity
        }
    }
}
