//
//  AppDelegate.swift
//  RustHelp01
//
//  Created by qwerty on 10.04.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow()
        window.makeKeyAndVisible()
        
        let tabBarController = UITabBarController()
        
        let firstVC = FirstViewController()
        firstVC.view.backgroundColor = .darkGray
        firstVC.tabBarItem = UITabBarItem(title: "РЕЙД", image: .checkmark, tag: 0)
        
        let lifeHackViewController = LifeHackVC()
        lifeHackViewController.tabBarItem = UITabBarItem(title: "Лайфхаки", image: .add, tag: 0)
        
        let secondVC = SecondVC()
        //secondVC.view.backgroundColor = .brown
        secondVC.tabBarItem = UITabBarItem(title: "ИНФОРМАЦИЯ", image: .actions,tag: 1)
        
        //навигейшн бар
        let firstNavigationBarVC = UINavigationController(rootViewController: firstVC)
        
        
        tabBarController.viewControllers = [firstNavigationBarVC,secondVC,lifeHackViewController]
        
        window.rootViewController = tabBarController
        
        self.window = window
        return true
    }

}

