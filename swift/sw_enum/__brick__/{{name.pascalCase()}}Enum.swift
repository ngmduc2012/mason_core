// Learn more: https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations
// use:
// var {{name.camelCase()}}Enum = {{name.pascalCase()}}Enum.north
// {{name.camelCase()}}Enum = .south

import Foundation

enum {{name.pascalCase()}}Enum {
    case north, south
//    case qrCode(String)
//    indirect case multiplication({{name.pascalCase()}}Enum, {{name.pascalCase()}}Enum)
    mutating func turnNorth() {
        self = .north
    }
}

extension {{name.pascalCase()}}Enum : String {
    // Learn more: https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations#Matching-Enumeration-Values-with-a-Switch-Statement
    func getTitle() -> String {
        switch self {
        case .north:
            return "north"
        case .south:
            return "south"
//        case let .qrCode(productCode):
//            return "qrCode \(productCode)"
//        case let .multiplication(left, right):
//            return getTitle()
        default:
            return "south"
        }
    }

    // Learn more: https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations#Iterating-over-Enumeration-Cases
    func getNumberOfChoices() -> Int {
       return {{name.pascalCase()}}Enum.allCases.count
    }
}




