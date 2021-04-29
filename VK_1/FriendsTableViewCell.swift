//
//  FriendsTableViewCell.swift
//  VK_1
//
//  Created by Grisha Pospelov on 29.04.2021.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    static let reuseIdentifier = "FriendsTableViewCell"
    
    @IBOutlet var titleCell: UILabel!
    @IBOutlet var imageViewCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configure(title: String?, image: UIImage?) {
        titleCell.text = title
        imageViewCell.image = image
    }


}
