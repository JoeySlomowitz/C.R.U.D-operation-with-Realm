//
//  ViewController.swift
//  CRUD operation - RealmSwift
//
//  Created by Joey Slomowitz on 13/6/18.
//  Copyright © 2018 Joey Slomowitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Mark: - Initialize your object
    
    let pikachu = Pokemon(id: 0, healthPoints: 100, powerPoints: 150)

    
    override func viewDidLoad() {
        super.viewDidLoad()

        /* Store your object in realm.  Note - all the functions we have created in 'RealmService' have been made with generics, so you can create, read, update, delete with any type! - Whether it's a 'Pokemon', 'Baddie' or even a 'HolyHandGrenade' type of object.
         */
        
        
    RealmService.shared.create(object: pikachu)
    }

    /*
    There are also some additional functions in RealmService that can help you.  You can add an object to a realm 'List' using: 'appendToList<T: Object>(list: List<T>?, with items: [T])'
    (note: This is a 'List' not an 'Array' as RealmSwift does not currently support Arrays)
    */


}
