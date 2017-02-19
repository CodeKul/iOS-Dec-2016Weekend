//
//  FoodTableViewCell.swift
//  XMLParsing
//
//  Created by Codekul on 19/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lblFoodName: UILabel!
    
    @IBOutlet weak var lblFoodPrice: UILabel!
    
    @IBOutlet weak var lblFoodDesc: UILabel!
    @IBOutlet weak var lblFoodCal: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
