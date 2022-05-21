import UIKit


struct Friend {
    var name: String
}

struct PpakCoder {
    var name: String
}

struct MyArray<T> {
    
    // 제네릭을 담은 빈 배열
    var elments: [T] = [T]()
    
    // 생성자
    init(_ elments: [T]) {
        self.elments = elments
    }
}

var mySomeArray = MyArray([1,2,3])
print("someArray: \(mySomeArray)")

var Friend1 = Friend(name: "Brad")
var Friend2 = Friend(name: "Brad2")
var Friend3 = Friend(name: "Brad3")

var mySomeArray2 = MyArray([Friend1, Friend2, Friend3])
print("someArray2: \(mySomeArray2)")
