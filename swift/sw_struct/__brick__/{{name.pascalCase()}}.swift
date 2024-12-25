// Learn more: https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures#Comparing-Structures-and-Classes
// use:
// let {{name.camelCase()}} = {{name.pascalCase()}}()
// {{name.camelCase()}}.eg = 1280

import Foundation

struct {{name.pascalCase()}} {

    var eg = 0{
      willSet(newDistance) {
        print("The distance will be set to \(newDistance)")
      }
      didSet {
        print("The distance is set to \(distance)")
        print("Its old value is: \(oldValue)")
      }
    }

//    init() {
//
//    }

    // {{name.pascalCase()}}.egFunc()
    static func egFunc(_ eg: String, eg2: Int = 1) {

    }

    // Learn more: https://docs.swift.org/swift-book/documentation/the-swift-programming-language/methods#Assigning-to-self-Within-a-Mutating-Method
    mutating func moveBy(x egX: Int) {
            self = {{name.pascalCase()}}(eg: egX)
    }
}




