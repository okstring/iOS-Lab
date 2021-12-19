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
        vc.view.backgroundColor = .white
        window.rootViewController = vc
        vc.reactor = MainReactor()
        self.window = window
        window.makeKeyAndVisible()
        
    }
}

