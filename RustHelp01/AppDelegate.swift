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
        firstVC.tabBarItem = UITabBarItem(title: "Reid", image: .checkmark, tag: 0)
        
        let furnanceVC = FurnanceViewController()
        //secondVC.view.backgroundColor = .brown
        furnanceVC.tabBarItem = UITabBarItem(title: "Furnance", image: .actions,tag: 1)
        
        
        let infoVC = InfoViewController()
        infoVC.tabBarItem = UITabBarItem(title: "Info", image: .add, tag: 0)
        
        
        
        let settingVC = SettingViewController()
        settingVC.tabBarItem = UITabBarItem(title: "Setting", image: .add, tag: 0)
        
        
        //навигейшн бар
        let firstNavigationBarVC = UINavigationController(rootViewController: firstVC)
        
        
        tabBarController.viewControllers = [firstNavigationBarVC,furnanceVC,infoVC,settingVC]
        
        window.rootViewController = tabBarController
        
        self.window = window
        return true
    }

}
