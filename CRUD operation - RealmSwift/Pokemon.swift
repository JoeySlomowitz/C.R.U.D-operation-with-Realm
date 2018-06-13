//
//  ModeExample.swift
//  CRUD operation - RealmSwift
//
//  Created by Joey Slomowitz on 13/6/18.
//  Copyright © 2018 Joey Slomowitz. All rights reserved.
//

import Foundation
import RealmSwift


//: Mark - Example - The following is an example of a model class that we want to store as a Realm Object.

// NB: - Objects that need to be storable in Realm need to be given the following syntax.  '@objcMembers' before the class to expose the object to the objective C runtime (Realm is largely built on objective C).  The class must also conform to 'Object' - which is a type created by Realm.

@objcMembers class Pokemon: Object {
    
    dynamic var id = 0
    dynamic var healthPoints = 0
    dynamic var powerPoints = 0
    
    convenience init(id: Int, healthPoints: Int, powerPoints: Int) {
        self.id = id
        self.healthPoints = healthPoints
        self.powerPoints = powerPoints
    }
    
    // The 'primaryKey()' function is a realm function that we're overriding.  This function is used to track the 'id' of a realm object.  You can read more about this at;  https://realm.io/docs/swift/latest/ 
    
    override static func primaryKey() -> String? {
                return "id"
            }
}

