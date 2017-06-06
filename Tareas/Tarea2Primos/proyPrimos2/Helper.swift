//
//  Helper.swift
//  proyPrimos2
//
//  Created by Federico Valerin on 5/22/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    
    class func  getViewControllerIdentifier() -> String {
        return String(describing: self)
        
    }
    
}

extension UITableView {
    
    func registerCustomCell(identifier:String) {
        let nib = UINib(nibName: identifier, bundle: nil)
        self.register(nib, forCellReuseIdentifier: identifier)
        
    }
}

extension UITableViewCell {
    
    class func  getTableViewCellIdentifier() -> String {
        return String(describing: self)
    }
    
}
