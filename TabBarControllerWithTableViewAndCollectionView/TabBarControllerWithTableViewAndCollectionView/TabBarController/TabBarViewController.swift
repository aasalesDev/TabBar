//
//  TabBarViewController.swift
//  TabBarControllerWithTableViewAndCollectionView
//
//  Created by Anderson Sales on 15/11/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    static let icons = ["Home", "Settings"]
    static let images = ["house", "gear"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        configureTabBarItems()
        configTabBar()
    }
    
    private func configureTabBarItems() {
        guard let items = tabBar.items else { return }
        for index in 0..<items.count {
            items[index].badgeValue = String(index+1)
            items[index].image = UIImage(systemName: TabBarViewController.images[index])
            items[index].title = TabBarViewController.icons[index]
        }
    }
    
    private func configTabBar(){
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .black
        UITabBar.appearance().barTintColor = .black
        UITabBar.appearance().tintColor = .red
    }
}
