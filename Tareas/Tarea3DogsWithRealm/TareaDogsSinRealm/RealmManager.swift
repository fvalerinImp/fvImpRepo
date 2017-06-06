//
//  RealmManager.swift
//  Tarea3DogsWithRealm
//
//  Created by Federico Valerin on 5/28/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit
import RealmSwift

class RealmManager: NSObject {
    
    class func ObtenerPerros () -> Results<clsDog> {
        let realm = try! Realm()
        let lperros = realm.objects(clsDog.self)
        return lperros
//        if lperros.count > 0 {
//            return lperros
//        }
//        else {
//            return nulo
//        }
        
    }
    
    class func addObjectToRealm(realmObject: Object ) {
        let realm = try! Realm()
        try! realm.write {
            realm.add(realmObject)
        }
    }
    
}
