//
//  NumberCustomCell.swift
//  proyQuiz3
//
//  Created by Federico Valerin on 5/23/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class NumberCustomCell: UITableViewCell {

    
    @IBOutlet weak var textoAgregadoLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func InitCelda(psTexto:String) {
        textoAgregadoLabel.text = psTexto
    }
    
}
