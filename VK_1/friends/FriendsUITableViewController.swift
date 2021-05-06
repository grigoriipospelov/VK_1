import UIKit

class FriendsUiTableView: UITableViewController {
    var groups = ["Саша", "Маша", "Глеб", "Рома"]
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.reuseIdentifier, for: indexPath) as!
            FriendsTableViewCell
        
        let group = groups[indexPath.row]
        cell.configure(title: group, image: UIImage(systemName: "bolt"))
        
        return cell
    }
  
}

