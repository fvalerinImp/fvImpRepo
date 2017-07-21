//
//  clsCarro.swift
//  practica1
//
//  Created by Federico Valerin on 5/28/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class clsCarro: NSObject {
    
    var marca = ""
    var dueno = ""
    var color = ""
    var ano = 0
    
    init(pMarca:String, pDueno:String, pColor:String, pAno:Int) {
        marca = pMarca
        dueno = pDueno
        color = pColor
        ano = pAno
        
    }

}
