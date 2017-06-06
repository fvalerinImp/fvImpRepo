//
//  PrimosTableViewCell.swift
//  proyPrimos2
//
//  Created by Federico Valerin on 5/22/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class PrimosTableViewCell: UITableViewCell {

    
    @IBOutlet weak var primeNumberLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func InitCelda(pnNumero : Int){
        primeNumberLabel.text = String(pnNumero)
    }
    
}
