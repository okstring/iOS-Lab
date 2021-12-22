//
//  SceneDelegate.swift
//  Lab
//
//  Created by Issac on 2021/12/17.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        let vc = ViewController()
        let nc = UINavigationController(rootViewController: vc)
        vc.view.backgroundColor = .white
        window.rootViewController = nc
        self.window = window
        window.makeKeyAndVisible()
        
    }
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        if let url = URLContexts.first?.url {
            if url.absoluteString.starts(with: "lab://repo") {
                
                guard let urlComponents = URLComponents(string: url.absoluteString),
                      let repositoryURL = urlComponents.queryItems?.first(where: { $0.name == "url" })?.value else {
                          return
                      }
                
                let repositoryViewController = RepositoryViewController()
                repositoryViewController.url = repositoryURL
                
                let nv = self.window?.rootViewController as? UINavigationController
                nv?.pushViewController(repositoryViewController, animated: true)
            }
        }
    }
    
}
