//
//  Recipe.swift
//  Cook
//
//  Created by Apple on 5/18/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation

class Recipe {
    let name: String
    let ingredients: [String]
    
    init(name: String, ingredients: [String]) {
        self.name = name
        self.ingredients = ingredients
    }
}
