
# An Awesome RealmSwift CRUD operation model #

### Just got started with Realm in your Swift project? ###
### This will save you loads of time ###

The key file here is `RealmService.swift` , just copy that file into your project, install the RealmSwift cocoapod and you're good to go 👍.

See installation guide here 👉  (  https://realm.io/docs/swift/latest/  )

Otherwise, there is a `ViewController.swift` file and a `Pokemon.swift` file that aim to demonstrate a brief demo on how to use the methods in `RealmService.swift`

## In `RealmService.swift` ##

### Quick note on these functions; ###

We have a  "Create":    ` func create<T: Object>(object: T)`  ______
A "Read"  `func read<T: Object>(object: T.Type) -> Results<T>!`  ______
An "Update"  `func update<T: Object>(object: T, with dictionary: [String: Any?])`  _____
And a "Delete"  `func delete<T: Object>(_ object: T)`  __

Note:  All of these functions are using `Generics`;  these will allow you to pass in any type of object you want to be stored inside your Realm.

There are however a few 'gotchas' with using RealmSwift, as it won't currently support ALL Swift types.  So we didn't want to just stop here.  We've taken things a step further and made another function or two to help out even further; 😄
    One type currently not supported by RealmSwift is `Array`.  Instead they use a type known as `List`.

Say you want to append a list of objects to be stored in your Realm, we have a solution for that:

`func appendToList<T: Object>(list: List<T>?, with items: [T])`

There is also a function to help you verify the existence of an object you created;
`objectExists(withPrimaryKey primaryKey: Int) -> Bool`

Along with some Error handling methods;
`func observeRealmError(in vc: UIViewController, completion: @escaping (Error?) -> Void)`

and
`func post(_ error: Error)`


Happy Realming!
😆
