//
//  Person+CoreDataProperties.swift
//  CoreDataSimpleFetch
//
//  Created by Michael Teter on 2016-09-25.
//  Copyright © 2016 Michael Teter. All rights reserved.
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person");
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16

}
