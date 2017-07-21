//
//  clsDog.swift
//  TareaDogsSinRealm
//
//  Created by Federico Valerin on 5/28/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class clsDog: NSObject {
    var name = ""
    var ImageName = ""
    var color = ""
    var Orden = 0
    
    init(pName:String, pImageName:String, pColor:String, pOrden: Int) {
        name = pName
        ImageName = pImageName
        color = pColor
        Orden = pOrden
    }
    
}
