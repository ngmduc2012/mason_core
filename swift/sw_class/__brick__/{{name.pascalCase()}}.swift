
import Foundation

class {{name.pascalCase()}} : NSObject {

    override private init() {
        super.init()
    }

    deinit {

    }

    var eg = 0{
        willSet(newDistance) {
          print("The distance will be set to \(newDistance)")
        }
        didSet {
          print("The distance is set to \(distance)")
          print("Its old value is: \(oldValue)")
        }
    }

//    let egString: String
//    init(eg s: String) {
//        egString = s
//    }
//    init(eg2 egString: String) {
//        self.egString = egString
//    }

    // Global variable
    static let shared = {{name.pascalCase()}}()

    // {{name.pascalCase()}}.egFunc() use: static or class
    static func egFunc(_ eg: String, eg2: Int = 1) {

    }


}




