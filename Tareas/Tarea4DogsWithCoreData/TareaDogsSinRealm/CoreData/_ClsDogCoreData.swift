// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ClsDogCoreData.swift instead.

import Foundation
import CoreData

public enum ClsDogCoreDataAttributes: String {
    case color = "color"
    case imagen = "imagen"
    case nombre = "nombre"
    case orden = "orden"
}

open class _ClsDogCoreData: NSManagedObject {

    // MARK: - Class methods

    open class func entityName () -> String {
        return "ClsDogCoreData"
    }

    open class func entity(managedObjectContext: NSManagedObjectContext) -> NSEntityDescription? {
        return NSEntityDescription.entity(forEntityName: self.entityName(), in: managedObjectContext)
    }

    // MARK: - Life cycle methods

    public override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
        super.init(entity: entity, insertInto: context)
    }

    public convenience init?(managedObjectContext: NSManagedObjectContext) {
        guard let entity = _ClsDogCoreData.entity(managedObjectContext: managedObjectContext) else { return nil }
        self.init(entity: entity, insertInto: managedObjectContext)
    }

    // MARK: - Properties

    @NSManaged open
    var color: String?

    @NSManaged open
    var imagen: String?

    @NSManaged open
    var nombre: String?

    @NSManaged open
    var orden: NSNumber?

    // MARK: - Relationships

}

