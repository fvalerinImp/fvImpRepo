//
//  CoreDataManager.swift
//  News
//
//  Created by Federico Valerin o5/30/17.
//  Copyright © 2017 César Brenes Solano. All rights reserved.
//result

import UIKit
import CoreData

class CoreDataManager: NSObject {
    
    class func getAllCategories() -> [Category] {
        let result = Category.mr_findAll()
        
//        guard let resultUnwraped = result else {
//            return createDefaultsCategory()
//        }
        if result!.count == 0 {
            return createDefaultsCategory()
        }
        return result as! [Category]
    }
    
    class func createDefaultsCategory() -> [Category] {
        let econCat = Category.mr_createEntity()
        econCat?.name = "Economia"
        econCat?.imageName = "economy"
        
        let sportCat = Category.mr_createEntity()
        sportCat?.name = "Deports"
        sportCat?.imageName = "sports"
        
        let IncCat = Category.mr_createEntity()
        IncCat?.name = "Sucesos"
        IncCat?.imageName = "incident"
        
        let tecCat = Category.mr_createEntity()
        tecCat?.name = "Tecnologia"
        tecCat?.imageName = "technology"
        
        saveContext()
        return getAllCategories()
    }
    
    private class func saveContext() {
        NSManagedObjectContext.mr_default().mr_saveToPersistentStoreAndWait()
    }
    
    
    class func SalvarUnaNoticia(pTitle:String, pDesc:String, pCategory: Category) {
        let news = News.mr_createEntity()
        news?.title = pTitle
        news?.descriptionNews = pDesc
        news?.createdAt = Date()
        news?.category = pCategory
        pCategory.addNewsObject(news!)
        saveContext()
    }
    
    
    
    
}
