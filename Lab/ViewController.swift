//
//  ViewController.swift
//  Lab
//
//  Created by Issac on 2021/12/17.
//

import UIKit
import WidgetKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        WidgetCenter.shared.getCurrentConfigurations { result in
            switch result {
            case .success(let widgets):
                print(widgets)
            case .failure(let error):
                print(error)
            }
        }
    }


}

