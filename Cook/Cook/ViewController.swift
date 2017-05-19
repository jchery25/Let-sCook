//
//  ViewController.swift
//  Cook
//
//  Created by Apple on 5/18/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var inputIngredients: UITextField!
    
    var ingredientArray = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        inputIngredients.text = ""
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "IngredientsCellNib", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "IngredientCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredientArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell") as! IngredientsTableViewCell
        
        let item = ingredientArray[indexPath.row]
        cell.setUpCell(item: item)
        
        return cell
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let item = inputIngredients.text {
            ingredientArray.append(item)
            inputIngredients.text = ""
            inputIngredients.resignFirstResponder()
            tableView.reloadData()
            return true
        }
        
        return true
    }

}

