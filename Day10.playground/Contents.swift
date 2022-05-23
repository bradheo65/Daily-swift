import UIKit
import Foundation

//Closer

let myName: String = {
    return "브래드"
}()
print(myName)

let myRealName = { (name: String) -> String in
    return "개발하는 \(myName)"
}
print(myRealName(myName))

let myRealNameValue = { (name: String) -> Void in
    let hello = name + " hi"
    print(hello)
}
myRealNameValue(myName)
