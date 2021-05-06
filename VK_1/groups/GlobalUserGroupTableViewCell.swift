//
//  GlobalUserGroupTableViewCell.swift
//  VK_1
//
//  Created by Grisha Pospelov on 29.04.2021.
//

import UIKit

class GlobalUserGroupTableViewCell:
    UITableViewCell {
    
    static let reuseIdentifier = "GlobalUserGroupTableViewCell"
    
    @IBOutlet var titleCell: UILabel!
    @IBOutlet var imageViewCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    func configure(title: String?, image: UIImage?) {
        titleCell.text = title
        imageViewCell.image = image
    }

}
