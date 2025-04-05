//
//  ViewController.swift
//  Complex Gesture Handling in a Creative Drawing App
//
//  Created by Stephano Portella on 05/04/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let canvas = CanvasView(frame: CGRect(x: 100, y: 150, width: 200, height: 200))
        canvas.backgroundColor = .systemBlue
        view.addSubview(canvas)
    }
}
