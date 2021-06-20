//
//  AppTabBarControllerViewController.swift
//  R-Example
//
//  Created by William Boles on 20/06/2021.
//

import UIKit
import Stack

class AppTabBarController: UITabBarController {
    let stackViewController: UIViewController = {
        let viewController = Stack.Coordinator().createInitialViewController()
        viewController.tabBarItem = UITabBarItem(title: "A", image: nil, tag: 1000)

        return viewController
    }()
//
//    let collectionViewNavigationController: ModuleBNavigationController = {
//        let bundle = Bundle(identifier: "com.williamboles.ModuleB")
//        let storyboard = UIStoryboard(name: "ModuleB", bundle: bundle)
//        let navigationController = storyboard.instantiateInitialViewController() as! ModuleBNavigationController
//        navigationController.tabBarItem = UITabBarItem(title: "B", image: nil, tag: 1001)
//
//        return navigationController
//    }()
//
//    // MARK: - View
//
    override open func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [stackViewController]
    }
}
