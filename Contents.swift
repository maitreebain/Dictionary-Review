import UIKit

//Dictionary

struct _Dictionary<Key, Value> where Key: Equatable {
    let data: [(Key, Value)]
    
    func value(forKey keyToFind: Key) -> Value? {
        
        
        for (key, value) in self.data {
            if key == keyToFind {
                return value
            }
        }
        return nil
        //fatalError()
    }
}

// TODO: variadics

func sum(_ integers: [Int]) -> Int {
    var result = 0
    for integer in integers {
    result += integer
    }
    return result
}

func sum(_ integers: Int...) -> Int {
    var result = 0
    for integer in integers {
    result += integer
    }
    return result
}

sum([1, 2, 3, 4, 6, 7, 8])

extension _Dictionary: ExpressibleByDictionaryLiteral {
    init(dictionaryLiteral elements: (Key, Value)...) {
        self.data = elements
    }
    
    
}

let values = _Dictionary.init(data: [(1, "Hello"), (2, "World")])
let _values: _Dictionary<Int, String> = [1: "one", 2: "two"]

values.value(forKey: 1)
values.value(forKey: 2)
values.value(forKey: 3)

import Foundation

struct User: Hashable {
    let id: Int
    let name: String
    
//    var hashValue: Int {
//        return  0
//    }
    
//    func hash(into hasher: inout Hasher) {
//        self.id.hash(into: &hasher)
//        self.name.hash(into: &hasher)
//    }
}

User(id: 1, name: "Blob").hashValue
User(id: 2, name: "Blob Jr").hashValue


1.hashValue
2.hashValue
3.hashValue

// end theory

func foo(x: String) {
    x.count
}
let x = "asdf"
let xs = [1, 2, 3, 4]
let y = 1

//ExpressibleByLit

//let myType: MyType = [1, 2, 3]


// 1: "one", 2: "two", ...
let namesByInt: [Int: String] = [
    1: "one",
    2: "two",
    3: "three",
    4: "four",
//    3: "tres",
]
    // Dictionary.init(dictionaryLiteral: (1, "one"), (2, "two"), (3, "three"))

Dictionary<Int, String>
    .init([(1, "one"), (2, "two"), (2, "dos"), (2, "duex")], uniquingKeysWith: { lhs, rhs in
        lhs == "dos" || rhs == "dos" ? "dos" : rhs
        
    })

//Dictionary.init
1

//for value in namesByInt {
//    value.key
//    value.value
//}

var exclaimedNamesByInt: Dictionary<Int, String> = [:]
for (key, value) in namesByInt {
    exclaimedNamesByInt[key] = value + "!"
//    exclaimedNamesByInt.removeValue(forKey: 100)
}
exclaimedNamesByInt

//namesByInt.forEach { key, value in
//    key
//    value
//    if key == 2 { return }
//    //...
//}

var count = 0
namesByInt
    .mapValues { $0 + "!" }

//namesByInt.map

namesByInt
    .mapValues { $0 + "!" }
    .filter { key, value in key <= 2 }
    .reduce(0) { accum, keyAndValue in
        accum + keyAndValue.key
}


type(of: namesByInt[1])
namesByInt[10000]
if let value = namesByInt[1] {
    
}

namesByInt[1].map { value in
    
}

//let ints = [1, 2, 3]
//ints[10000]
