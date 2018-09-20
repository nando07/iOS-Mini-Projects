//
//  Location+CoreDataProperties.swift
//  MyLocations
//
//  Created by Fernando Gomez on 8/22/18.
//  Copyright © 2018 Nando Gomez. All rights reserved.
//
//

import Foundation
import CoreData
import CoreLocation


extension Location {
   
   @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
      return NSFetchRequest<Location>(entityName: "Location")
   }
   
   @NSManaged public var latitude: Double
   @NSManaged public var longitude: Double
   @NSManaged public var date: Date
   @NSManaged public var locationDescription: String
   @NSManaged public var category: String
   @NSManaged public var placemark: CLPlacemark?
   @NSManaged var photoID: NSNumber?
}
