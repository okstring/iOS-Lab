//
//  ViewController.swift
//  Lab
//
//  Created by Issac on 2021/12/17.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.text = "여기는 메인입니다 :)"
        label.textColor = .black
        label.sizeToFit()
        label.center = self.view.center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mainLabel)
    }
}

