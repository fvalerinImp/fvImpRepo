//
//  CarrosTableViewCell.swift
//  practica1
//
//  Created by Federico Valerin on 5/28/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class CarrosTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nombrelb: UILabel!
    
    
    @IBOutlet weak var duenolb: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func AsignarCelda(pCarro : clsCarro) {
        nombrelb.text = pCarro.marca
        duenolb.text = pCarro.dueno
    }
    
    
}
