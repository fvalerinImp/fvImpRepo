//
//  RealmManager.swift
//  News
//
//  Created by Federico Valerin on 5/25/17.
//  Copyright © 2017 César Brenes Solano. All rights reserved.
//

import UIKit
import RealmSwift

class RealmManager: NSObject {

    class func getAllCategories () -> Results<Category> {
        let realm = try! Realm()
        let categories = realm.objects(Category.self)
        if categories.count > 0 {
            return categories
        }
        else {
            return createDefaultCategories()
        }
        
    }
    
    private class func createDefaultCategories() -> Results<Category> {
        let economyCategory = Category( value: ["name":"Economia","imageName":"economy", "type":1 ])
        let sportsCategory = Category( value: ["name":"Deportes","imageName":"sports", "type":2 ])
        let tecnoCategory = Category( value: ["name":"Tecnologia","imageName":"technology", "type":3 ])
        let sucesosCategory = Category( value: ["name":"Sucesos","imageName":"incident", "type":4 ])
        
        addObjectToRealm(realmObject: economyCategory)
        addObjectToRealm(realmObject: sportsCategory)
        addObjectToRealm(realmObject: tecnoCategory)
        addObjectToRealm(realmObject: sucesosCategory)
        
        return getAllCategories()
    }
    
    private class func addObjectToRealm(realmObject: Object ) {
        let realm = try! Realm()
        try! realm.write {
            realm.add(realmObject)
        }
    }
    
    class func createNews(categoryType: Int,  title:String, descrip : String) {
        let category = getCategory(type: categoryType)
        let news = News()
        news.titleNews = title
        news.descriptionNews = descrip
        news.createdAt = Date()
        let realm = try! Realm()
        try! realm.write {
            category.newsList.append(news)
        }
        addObjectToRealm(realmObject: news)
    }
    
    
    
    class func getAllNews(categoryType: Int) -> List<News> {
            return getCategory(type: categoryType).newsList
      /*  guard let category = categories.first else {
            return nil
        }
        return category.newsList
 */
    }
    
    private class func getCategory(type: Int) -> Category {
        let predicate = NSPredicate(format: "type = %d", type)
        let realm = try! Realm()
        return realm.objects(Category.self).filter(predicate).first!
    }
    
    
    
}
