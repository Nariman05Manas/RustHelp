//
//  SettingVC.swift
//  RustHelp01
//
//  Created by qwerty on 10.04.2024.
//

import UIKit

class SettingViewController: UIViewController {

    let wallCountTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter number of walls"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 8
        stack.alignment = .center
        return stack
    }()

    let resultLabel: UILabel = {
        let label = UILabel()
        label.text = "You need"
        label.textAlignment = .right
        label.numberOfLines = 0
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        let imageView = UIImageView(image: UIImage(named: "your_icon_name"))
        imageView.contentMode = .scaleAspectFit
        imageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 24).isActive = true

        stackView.addArrangedSubview(resultLabel)
        stackView.addArrangedSubview(imageView)

        view.addSubview(wallCountTextField)
        view.addSubview(stackView)

        setupConstraints()

        wallCountTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }

    func setupConstraints() {
        wallCountTextField.translatesAutoresizingMaskIntoConstraints = false
        wallCountTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        wallCountTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true
        wallCountTextField.widthAnchor.constraint(equalToConstant: 200).isActive = true

        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: wallCountTextField.bottomAnchor, constant: 20).isActive = true
    }

    @objc func textFieldDidChange(_ textField: UITextField) {
        guard let wallCountText = textField.text,
              let wallCount = Int(wallCountText) else {
            resultLabel.text = "Please enter a valid number of walls"
            return
        }

        let bulletsPerWall = 20 // Количество патронов на одну стену
        let dynamitePerWall = 2 // Количество динамита на одну стену
        
        let totalBulletsNeeded = wallCount * bulletsPerWall
        let totalDynamiteNeeded = wallCount * dynamitePerWall

        resultLabel.text = "You need \(totalBulletsNeeded) bullets \n \(totalDynamiteNeeded) dynamite for the raid."
    }
}
