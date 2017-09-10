//
//  SearchTableViewController.swift
//  Foodtopia
//
//  Created by kiam on 2017/9/9.
//  Copyright © 2017年 SomeName. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController, UISearchBarDelegate {
    lazy var searchBar:UISearchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: 200, height: 20))
    var data = ["dogs", "Cats", "Goofs", "Apples", "Frogs", "Orange"]
    
    var filteredData = [String]()
    var inSearchMode = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createSearchBar()
    }
    
    func createSearchBar() {
        searchBar = UISearchBar()
        
        
        searchBar.showsScopeBar = false
        searchBar.placeholder = "Enter your search here!"
        searchBar.becomeFirstResponder()
        searchBar.delegate = self
        searchBar.returnKeyType = UIReturnKeyType.done
        
        let rightButtonItem = UIBarButtonItem(
            title: "Cancel",
            style: .plain,
            target: self,
            action: #selector(backView(sender:))
        )
        
        self.navigationItem.titleView = searchBar
        self.navigationItem.rightBarButtonItem = rightButtonItem
        
    }
    
    func backView(sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if inSearchMode {
            return filteredData.count
        }
        
        return data.count

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? DataCell {
            let text: String!
            
            if inSearchMode {
                text = filteredData[indexPath.row]
            } else {
                text = data[indexPath.row]
            }
            cell.configureCell(text: text)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
////        if inSearchMode {
////            return filteredData.count
////        }
//        
//        
//        
////        self.performSegue(withIdentifier: "showDetails", sender: Any?.self)
//    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchBar.text == nil || searchBar.text == "" {
            inSearchMode = false
            view.endEditing(true)
            
            DispatchQueue.main.async{
                self.tableView.reloadData()
            }
        } else {
            inSearchMode = true
            filteredData = data.filter({$0 == searchBar.text})
            
            DispatchQueue.main.async{
                self.tableView.reloadData()
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as! ShowDetailViewController
                destinationController.text = (inSearchMode == true) ? filteredData[indexPath.row] : data[indexPath.row]
                
//                destinationController.label.text = "a"
            }
        }
    }
}
