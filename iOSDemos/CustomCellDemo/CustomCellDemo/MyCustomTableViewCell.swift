//
//  MyCustomTableViewCell.swift
//  CustomCellDemo
//
//  Created by Varun on 14/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {

    @IBOutlet var lblName: UILabel!
    @IBOutlet var profilePicImgView: UIImageView!
    @IBOutlet var lblRank: UILabel!
    @IBOutlet var lblAge: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setData(name:String, age:String, rank: String, imageName:String) {
        
        lblName.text = name
        lblAge.text = age
        lblRank.text = rank
        
        let img = UIImage(named: imageName)
        profilePicImgView.image = img
        
    }
    
}
