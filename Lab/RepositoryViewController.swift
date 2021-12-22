//
//  RepositoryViewController.swift
//  Lab
//
//  Created by Ok Hyeon Kim on 2021/12/22.
//

import UIKit
import WebKit

class RepositoryViewController: UIViewController {
    var url = ""
    
    let webView = WKWebView()
    
    override func loadView() {
        super.loadView()
        
        webView.frame = self.view.frame
        self.view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: url)
        let request = URLRequest(url: url!)
        
        self.webView.allowsBackForwardNavigationGestures = true  //뒤로가기 제스쳐 허용
        
        webView.load(request)
    }
}
