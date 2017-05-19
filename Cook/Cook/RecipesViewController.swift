//
//  RecipesViewController.swift
//  Cook
//
//  Created by Apple on 5/18/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class RecipesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
   
    @IBOutlet weak var tableview: UITableView!
    var recipeIngredientArray = [String]()

    let recipes = [
        Recipe(name: "White Rice", ingredients: ["Rice"]),
        Recipe(name: "Brown Rice", ingredients: ["Rice"]),
        Recipe(name: "Black Rice", ingredients: ["Rice"]),
        Recipe(name: "Red Rice", ingredients: ["Rice"])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.delegate = self
        self.tableview.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return recipes.count
        return recipes.count
    }


     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
 
        cell.textLabel?.text = recipes[indexPath.row].name
 
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let selectedIndexPath = tableview.indexPathForSelectedRow {
            let des = segue.destination
            let selectedRecipe = recipes[selectedIndexPath.row]
            
            // set selected recipe in new view controller
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
