//
//  ReidViewController.swift
//  RustHelp01
//
//  Created by qwerty on 10.04.2024.
//

import UIKit

class ReidViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.setImage(UIImage(named: "iron_door_icon"), for: .normal) // Заменяем текст иконкой для кнопки "железная дверь"
        button.layer.cornerRadius = 7
        return button
        
    }()
    
    private let button1: UIButton = {
        let button1 = UIButton()
        button1.backgroundColor = .black
        button1.setImage(UIImage(named: "armored_door_icon"), for: .normal) // Заменяем текст иконкой для кнопки "бронированная дверь"
        button1.layer.cornerRadius = 7
        return button1
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.setupUI1()
        
        self.button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        self.button1.addTarget(self, action: #selector(didTapButton1), for: .touchUpInside)
    }
    private func setupUI() {
        self.view.backgroundColor = .lightGray
        self.view.addSubview(button)
        self.button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -20), // Размещаем кнопку над центром экрана
            button.widthAnchor.constraint(equalToConstant: 100), // Ширина кнопки
            button.heightAnchor.constraint(equalToConstant: 100), // Высота кнопки
        ])
    }
    @objc func didTapButton() {
        let wallVC1 = SettingViewController()
        self.present(wallVC1, animated: true, completion: nil)
        print("кнопка 'железная дверь' нажата")
    }
    
    private func setupUI1() {
        self.view.backgroundColor = .lightGray
        self.view.addSubview(button1)
        self.button1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button1.topAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 20), // Размещаем кнопку под центром экрана
            button1.widthAnchor.constraint(equalToConstant: 100), // Ширина кнопки
            button1.heightAnchor.constraint(equalToConstant: 100), // Высота кнопки
        ])
    }
    @objc func didTapButton1() {
        print("кнопка 'бронированная дверь' нажата")
    }
}
