//
//  ItemsViewController.swift
//  Homepwner
//
//  Created by Bogdan Orzea on 2/24/19.
//  Copyright © 2019 Bogdan Orzea. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {
    var itemStore: ItemStore!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a instance of UITableViewCell, with default appereance
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        // Set the text on the cell with the description of the n-th item in the store
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDolars)"
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get the hight of the status bar
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UITextView(frame: CGRect(x:0, y:0, width: tableView.frame.size.width, height: 44))
        footerView.text = "No more items!"
        footerView.textAlignment = .center
        footerView.font = UIFont.systemFont(ofSize: 17.0)

        return footerView
    }
}
