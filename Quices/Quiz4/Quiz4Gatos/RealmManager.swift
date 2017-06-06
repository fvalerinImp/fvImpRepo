//
//  RealmManager.swift
//  Quiz4Gatos
//
//  Created by Federico Valerin on 5/30/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit
import RealmSwift

class RealmManager: NSObject {
    
    class func ObtenerGatos () -> Results<clsCat> {
        let realm = try! Realm()
        let lgatos = realm.objects(clsCat.self)
        return lgatos
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
    
    // No pude terminar esta funcion
//    private class func Existe(pNombre: String) -> Bool {
//        let predicate = NSPredicate(format: "NombreGato = %d", pNombre)
//        let realm = try! Realm()
//        return realm.objects(clsCat.self).filter(predicate).first!
//    }

    
    
    
}
