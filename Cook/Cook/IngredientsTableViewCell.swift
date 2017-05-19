//
//  IngredientsTableViewCell.swift
//  Cook
//
//  Created by Apple on 5/18/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class IngredientsTableViewCell: UITableViewCell {

    @IBOutlet weak var ingredientNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpCell(item: String) {
        ingredientNameLabel.text = item
    }

}
