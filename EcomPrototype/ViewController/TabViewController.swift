//
//  TabViewController.swift
//  EcomPrototype
//
//  Created by Kabilan S on 28/01/22.
//

import Foundation
import UIKit

class TabViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        self.selectedIndex = 2
    }
    
    func setupTabBar() {
        let home = createTabBarController(vc: HomeViewController(), selectedImage: UIImage(named: "homeSelected")!, unselectedImage: UIImage(named: "homeUnselected")!)
        
        let search = createTabBarController(vc: SearchViewController(), selectedImage: UIImage(named: "searchSelected")!, unselectedImage: UIImage(named: "searchUnselected")!)
        
        let deals = createTabBarController(vc: DealsViewController(), selectedImage: UIImage(named: "dealsSelected")!, unselectedImage: UIImage(named: "dealsUnselected")!)
        
        let favorites = createTabBarController(vc: FavoriteViewController(), selectedImage: UIImage(named: "favoritesSelected")!, unselectedImage: UIImage(named: "favoritesUnselected")!)
        
        let profile = createTabBarController(vc: ProfileViewController(), selectedImage: UIImage(named: "profileSelected")!, unselectedImage: UIImage(named: "profileUnselected")!)
        
        viewControllers = [home, search, deals, favorites, profile]
        
        guard let items = tabBar.items else { return }
        
        for item in items {
            item.imageInsets = UIEdgeInsets(top: -5, left: 5, bottom: -10, right: -5)
        }
    }
}

extension UITabBarController {
    func createTabBarController(vc: UIViewController, selectedImage: UIImage, unselectedImage: UIImage) -> UINavigationController{
        
        let viewController = vc
        let tabController = UINavigationController(rootViewController: viewController)
        tabController.tabBarItem.image = unselectedImage
        tabController.tabBarItem.selectedImage = selectedImage
        UITabBar.appearance().barTintColor = .red
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().tintColor = .white
        return tabController
    }
}
