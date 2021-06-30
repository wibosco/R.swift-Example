//
//  AppTabBarControllerViewController.swift
//  R-Example
//
//  Created by William Boles on 20/06/2021.
//

import UIKit
import Education
import Medical

class AppTabBarController: UITabBarController {
    let medicalViewController: UIViewController = {
        let viewController = Medical.Coordinator().createInitialViewController()
        viewController.tabBarItem = UITabBarItem(title: R.string.tabs.tabItemMedical(), image: nil, tag: 1000)

        return viewController
    }()
    
    let educationViewController: UIViewController = {
        let viewController = Education.Coordinator().createInitialViewController()
        viewController.tabBarItem = UITabBarItem(title: R.string.tabs.tabItemEducation(), image: nil, tag: 1001)

        return viewController
    }()
    
    let circusViewController: UIViewController = {
        let viewController = Coordinator().createInitialViewController()
        viewController.tabBarItem = UITabBarItem(title: R.string.tabs.tabItemCircus(), image: nil, tag: 1002)

        return viewController
    }()

    // MARK: - View

    override open func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [medicalViewController, educationViewController, circusViewController]
    }
}
