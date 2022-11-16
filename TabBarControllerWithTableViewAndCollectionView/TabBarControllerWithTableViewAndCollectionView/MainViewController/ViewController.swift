//
//  ViewController.swift
//  TabBarControllerWithTableViewAndCollectionView
//
//  Created by Anderson Sales on 15/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    static var imagesOne: ImageStruct = ImageStruct(images: ["gear", "house", "person", "trash", "folder", "gear", "house", "person", "trash", "folder"])
    static var imagesTwo: ImageStruct = ImageStruct(images: ["folder", "gear", "trash", "house", "person", "folder", "gear", "trash", "house", "person"])

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
    }
    
    @IBAction func tabBarButtonTapped(_ sender: UIButton) {
        if let viewController = UIStoryboard(name: "TabBarViewController", bundle: nil).instantiateViewController(withIdentifier: "TabBarViewController") as? TabBarViewController {
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

