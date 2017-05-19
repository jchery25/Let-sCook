//
//  RecipesViewController.swift
//  Cook
//
//  Created by Apple on 5/18/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class RecipesViewController: UIViewController {

    let recipes = [
        Recipe(name: "Carrot Rice"),
        Recipe(name: "Brown Rice"),
        Recipe(name: "Apple Rice"),
        Recipe(name: "Apple Carrot"),
        Recipe(name: "Carrot Apples")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(recipes[0].name)
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
