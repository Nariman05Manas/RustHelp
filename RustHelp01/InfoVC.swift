//
//  LIfeHackVC.swift
//  RustHelp01
//
//  Created by qwerty on 10.04.2024.
//

import UIKit

class InfoViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    
   
   private let countOfCell = 20
    private let heightCell = 44
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureScrollView()
        configureCells()
    }
        // MARK: - Private
        
            func configureScrollView() {
            scrollView.backgroundColor = .green
            scrollView.frame = self.view.frame
            scrollView.contentSize = CGSize(width: self.view.frame.width, height: CGFloat(countOfCell * heightCell + 80))
            
            view.addSubview(scrollView)
        }

        func  configureCells(){
            for index in 0...countOfCell {
                let cellView = CellView(frame: CGRect(x: 0, y: heightCell * index, width: Int(scrollView.frame.size.width), height: heightCell))
                
                scrollView.addSubview(cellView)
        }
    }
    
}

