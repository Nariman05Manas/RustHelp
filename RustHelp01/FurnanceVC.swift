//
//  SecondVC.swift
//  RustHelp01
//
//  Created by qwerty on 10.04.2024.
//

/* import UIKit

class SecondVC: UIViewController {
    
    
    private let array = Array.init(repeating: "AAA", count: 3)
    
    private lazy var layaout: UICollectionViewFlowLayout = {
        let layaout = UICollectionViewFlowLayout()
        layaout.minimumInteritemSpacing = 12
        layaout.minimumLineSpacing = 5
        layaout.scrollDirection = .horizontal
        return layaout
        
    }()
    
    private lazy var collectionView: UICollectionView = {
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layaout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.dataSource = self
        collection.register(CustomCell.self, forCellWithReuseIdentifier: String(describing: CustomCell.self))
        return collection
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        // Do any additional setup after loading the view.
    }
    private func setup(){
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
        collectionView.leadingAnchor.constraint(equalTo:
            view.safeAreaLayoutGuide.leadingAnchor),
        collectionView.trailingAnchor.constraint(equalTo:
            view.safeAreaLayoutGuide.trailingAnchor),
        collectionView.topAnchor.constraint(equalTo:
            view.safeAreaLayoutGuide.topAnchor),
        collectionView.bottomAnchor.constraint(equalTo:
            view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
extension SecondVC: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CustomCell.self), for: indexPath) as?
                CustomCell else {return UICollectionViewCell() }
        cell.configure(with: array[indexPath.item])
        return cell
    }
    
    
}
    final class CustomCell: UICollectionViewCell {
        
        private let lable: UILabel = {
            let lable = UILabel()
            lable.translatesAutoresizingMaskIntoConstraints = false
            lable.textAlignment = .center
            lable.textColor = .red
            return lable
        }()
        
        override init(frame: CGRect) {
            super.init(frame: .zero)
            setup()
            contentView.backgroundColor = .black
            contentView.layer.cornerRadius = 5
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        private func setup() {
            contentView.addSubview(lable)
            NSLayoutConstraint.activate([
                lable.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
                lable.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
            ])
            
        }
        func configure(with text: String) {
            lable.text  = text
        }
    }
*/

import UIKit

class FurnanceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Создаем view для размещения кнопок
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(containerView)
        
        // Устанавливаем constraints для размещения containerView по центру экрана
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        // Создаем и добавляем кнопки с изображениями
        let imageNames = ["image1", "image2", "image3", "image4"] // Названия изображений
        let buttonSize: CGFloat = 136
        let spacing: CGFloat = 20
        
        for (index, imageName) in imageNames.enumerated() {
            let button = UIButton(type: .custom)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setImage(UIImage(named: imageName), for: .normal)
            containerView.addSubview(button)
            
            // Рассчитываем позицию кнопки
            let columnIndex = index % 2
            let rowIndex = index / 2
            
            // Устанавливаем constraints для размещения кнопок в containerView
            NSLayoutConstraint.activate([
                button.widthAnchor.constraint(equalToConstant: buttonSize),
                button.heightAnchor.constraint(equalToConstant: buttonSize),
                button.centerXAnchor.constraint(equalTo: containerView.leadingAnchor, constant: (CGFloat(columnIndex) + 0.5) * (buttonSize + spacing)), // центрируем по горизонтали внутри столбца
                button.centerYAnchor.constraint(equalTo: containerView.topAnchor, constant: (CGFloat(rowIndex) + 0.5) * (buttonSize + spacing)) // центрируем по вертикали внутри строки
            ])
        }
    }
}
