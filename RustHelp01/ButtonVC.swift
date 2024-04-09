//
//  ButtonVC.swift
//  RustHelp01
//
//  Created by qwerty on 10.04.2024.
//

import UIKit

class ButtonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let buttonWidth: CGFloat = 100
        let buttonHeight: CGFloat = 50
        let startY: CGFloat = 100

        let buttonIcons = ["icon0", "icon1", "icon2", "icon3", "icon4"] // Names of your icon images in the asset catalog

        for i in 0..<5 {
            let button = UIButton(frame: CGRect(x: 50, y: startY + CGFloat(i) * (buttonHeight + 20), width: buttonWidth, height: buttonHeight))
            button.setTitle("Button \(i)", for: .normal)
            button.setImage(UIImage(named: buttonIcons[i]), for: .normal)
            button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
            self.view.addSubview(button)
        }
    }

    @objc func buttonTapped(_ sender: UIButton) {
        // Handle button tap here
        if let buttonText = sender.currentTitle {
            print("Button tapped: \(buttonText)")
        }
    }
}

