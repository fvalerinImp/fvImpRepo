//
//  DogsTableViewCell.swift
//  TareaDogsSinRealm
//
//  Created by Federico Valerin on 5/28/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class DogsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imagenImageView: UIImageView!
    
    @IBOutlet weak var lbNombre: UILabel!
    
    @IBOutlet weak var lbColor: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func AsignarCelda( pPerro : clsDog ) {
        lbNombre.text = pPerro.name
        lbColor.text  = pPerro.color
        imagenImageView.image = UIImage(named:pPerro.ImageName)
    }
    
    
}
