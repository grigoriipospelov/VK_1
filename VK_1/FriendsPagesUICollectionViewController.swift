//
//  FriendsPagesUICollectionViewController.swift
//  VK_1
//
//  Created by Grisha Pospelov on 03.05.2021.
//
import UIKit

class FriendsPagesUICollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: friendsPagesUICollectionViewCell.reuseID, for: indexPath) as! friendsPagesUICollectionViewCell
    
        cell.infoLabel.text = "фото"
        cell.FriendLabel.text = ""
    
        return cell
    }

    
}

