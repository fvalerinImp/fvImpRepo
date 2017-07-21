//
//  PrimosTableViewCell.swift
//  proyPrimos1
//
//  Created by Federico Valerin on 5/21/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class PrimosTableViewCell: UITableViewCell {

    
    @IBOutlet weak var NumeroPrimoLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(pnNumPrimo: Int){
        
        NumeroPrimoLabel.text = String(pnNumPrimo)
    }
    
    
}
