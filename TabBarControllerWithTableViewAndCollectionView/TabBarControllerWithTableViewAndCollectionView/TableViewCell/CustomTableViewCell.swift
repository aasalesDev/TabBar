//
//  CustomTableViewCell.swift
//  TabBarControllerWithTableViewAndCollectionView
//
//  Created by Anderson Sales on 15/11/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImageView: UIImageView!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
        
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setupCell(imageName: String) {
        cellImageView.image = UIImage(systemName: imageName)
    }
}
