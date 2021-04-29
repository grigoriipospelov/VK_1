//
//  AllUserGroupTableViewController.swift
//  VK_1
//
//  Created by Grisha Pospelov on 29.04.2021.
//

import UIKit

class AllUserGroupTableViewController: UITableViewController {
    var groups = ["спорт", "еда", "музыка", "путешесвтия"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
      
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return groups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GlobalUserGroupTableViewCell.reuseIdentifier, for: indexPath) as!
            GlobalUserGroupTableViewCell
        
        let group = groups[indexPath.row]
        cell.configure(title: group, image: UIImage(systemName: "bolt"))
        
        return cell
    }
  
}
