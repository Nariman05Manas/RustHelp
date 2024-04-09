//
//  CellView.swift
//  RustHelp01
//
//  Created by qwerty on 10.04.2024.
//

import UIKit

class CellView: UIView {
    
    private let separatorView = UIView()
    private let lable = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .orange
        
        separatorView.backgroundColor = .white
        
        separatorView.frame = CGRect(x: 0, y: frame.size.height - 1, width: frame.size.width, height: 1)
        self.addSubview(separatorView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

