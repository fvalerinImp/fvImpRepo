//
//  CatCustomTableViewCell.swift
//  Quiz4Gatos
//
//  Created by Federico Valerin on 5/30/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class CatCustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lbcat: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func AsignarCelda(pGato : clsCat) {
        lbcat.text = pGato.NombreGato
    }
    
}
