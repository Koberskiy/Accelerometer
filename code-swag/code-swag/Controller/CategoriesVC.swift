//
//  ViewController.swift
//  code-swag
//
//  Created by Yaroslav Koberskyy on 4/17/20.
//  Copyright © 2020 Yaroslav Koberskyy. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var CategoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CategoryTable.delegate = self
        CategoryTable.dataSource = self
    }
    
    // MARK: TableView Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instance.getCategory().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataServices.instance.getCategory()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataServices.instance.getCategory()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category) 
        }
    }
}
