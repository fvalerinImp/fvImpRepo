//
//  DogTableViewCell.swift
//  CustomViewCellSample
//
//  Created by Federico Valerin on 5/16/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class DogTableViewCell: UITableViewCell {

    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var ColorLabel: UILabel!
    
    
    @IBOutlet weak var AgeLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
