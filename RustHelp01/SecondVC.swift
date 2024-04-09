//
//  SecondVC.swift
//  RustHelp01
//
//  Created by qwerty on 10.04.2024.
//

import UIKit

class SecondVC: UIViewController {
    
    
    private let array = Array.init(repeating: "AAA", count: 100)
    
    private lazy var layaout: UICollectionViewFlowLayout = {
        let layaout = UICollectionViewFlowLayout()
        layaout.minimumInteritemSpacing = 5
        layaout.minimumLineSpacing = 12
        layaout.scrollDirection = .vertical
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
            contentView.layer.cornerRadius = 10
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

