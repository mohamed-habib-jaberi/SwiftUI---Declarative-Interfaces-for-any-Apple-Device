
import Foundation
import UIKit

class DishesTableViewController: UITableViewController {
    
    private let dishes = Dish.all()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DishCell", for: indexPath)
        
        cell.textLabel?.text = dishes[indexPath.row].name
        cell.imageView?.image = UIImage(named: dishes[indexPath.row].imageURL)
        
        return cell
        
    }
    
}
