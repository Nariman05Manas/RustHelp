//
//  FirstVC.swift
//  RustHelp01
//
//  Created by qwerty on 10.04.2024.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(frame: CGRect(x: 5, y: 100, width: 100, height: 50))
        button.setTitle("Дверь", for: .normal)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        view.addSubview(button)

        // Do any additional setup after loading the view.
    }
    
    @objc func tap() {
        let wallVC = ButtonViewController() // Instantiate the WallViewController
        self.present(wallVC, animated: true, completion: nil) // Present the WallViewController
    }
}

