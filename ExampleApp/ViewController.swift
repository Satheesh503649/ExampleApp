//
//  ViewController.swift
//  ExampleApp
//
//  Created by Satheesh Kumar on 14/11/19.
//  Copyright © 2019 Satheesh Kumar. All rights reserved.
//

import UIKit
import BlinkingLabel

class ViewController: UIViewController {
    
    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(x: 10, y: 20, width: 200, height: 30))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(x: 10, y: 60, width: 125, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
        
        // Do any additional setup after loading the view.
    }
    
    @objc func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }


}

