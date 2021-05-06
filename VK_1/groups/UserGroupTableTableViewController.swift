//
//  UserGroupTableTableViewController.swift
//  VK_1
//
//  Created by Grisha Pospelov on 29.04.2021.
//

import UIKit

class UserGroupTableTableViewController: UITableViewController {

    var groups = ["машины", "стиль", "люди", "образ жизни"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    @IBAction func addgroup(segue: UIStoryboardSegue) {
        guard
            segue.identifier == "AddGroup",
            let sourceController = segue.source as? AllUserGroupTableViewController,
            let index = sourceController.tableView.indexPathForSelectedRow
        else {
            return
        }

        let group = sourceController.groups[index.row]

        if !groups.contains(group) {
            groups.append(group)
        }
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
      
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return groups.count
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            // Если была нажата кнопка «Удалить»
            if editingStyle == .delete {
            // Удаляем город из массива
                groups.remove(at: indexPath.row)
            // И удаляем строку из таблицы
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GlobalUserGroupTableViewCell.reuseIdentifier, for: indexPath) as!
            GlobalUserGroupTableViewCell
        
        let group = groups[indexPath.row]
       
        cell.configure(title: group, image: UIImage(systemName: "poweroff"))
        return cell
    }
  
}
