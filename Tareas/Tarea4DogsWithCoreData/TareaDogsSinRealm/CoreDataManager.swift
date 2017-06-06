//
//  CoreDataManager.swift
//  Tarea4DogsWithCoreData
//
//  Created by Federico Valerin on 6/4/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit
import CoreData

class CoreDataManager: NSObject {
    
    
 //   static nOrden? = 0
    
    class func getAllPerros() -> [ClsDogCoreData] {
        let result = ClsDogCoreData.mr_findAll()
        
        
        //        guard let resultUnwraped = result else {
        //            return createDefaultsCategory()
        //        }
        if result!.count == 0 {
        //    return createDefaultsCategory()
        }
        
 //       nOrden = result?.count
        
        return result as! [ClsDogCoreData]
    }
    
    private class func saveContext() {
        NSManagedObjectContext.mr_default().mr_saveToPersistentStoreAndWait()
    }
    
    class func SalvarUnPerro(pNombre:String, pColor:String, pImagen:String, pOrden:Int ) {
//        nOrden = nOrden + 1
        let loPerro = ClsDogCoreData.mr_createEntity()
        loPerro?.nombre = pNombre
        loPerro?.color = pColor
        loPerro?.imagen = pImagen
//        loPerro?.orden = nOrden
        saveContext()
    }
    
    
    
    
}

