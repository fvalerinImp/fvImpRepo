//
//  DogsTableViewCell.swift
//  CustomTableViewNoseQue
//
//  Created by Federico Valerin on 5/16/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class DogsTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
