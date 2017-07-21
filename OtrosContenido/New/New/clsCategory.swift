//
//  clsCategory.swift
//  New
//
//  Created by Federico Valerin on 5/18/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class clsCategory: NSObject {
    
    var name:String
    var image:UIImage
    var newsArray:[clsNew]
    
    init(name:String, image: String){
        
        self.name = name
        self.image = UIImage(named: image)!
        self.newsArray = [clsNew]()
        
    }

}
