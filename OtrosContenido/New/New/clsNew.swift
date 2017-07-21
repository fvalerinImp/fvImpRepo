//
//  clsNew.swift
//  New
//
//  Created by Federico Valerin on 5/18/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class clsNew: NSObject {
    
    var titleNews: String
    var descriptionNews: String
    var createdAt: Date
    
    init(titleNews: String, descriptionNews: String, createdAt:Date) {
        self.titleNews = titleNews
        self.descriptionNews = descriptionNews
        self.createdAt = createdAt
    }

}
