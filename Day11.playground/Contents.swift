import UIKit

// comletion 이라는 클로저를 매개변수로 가지는 메소드 정의

func sayHi(completion: () -> Void) {
    print("sayHi() called")
    sleep(2)
    // comletion 클로저 실행
    completion()
}

// 메소드 호출
sayHi(completion: {
    print("2초가 지났다.")
})

sayHi() {
    print("2초가 지났다. 2")
}

// 매개변수로서 데이터를 반환하는 클로저
func sayHiWithName(completion: (String) -> (Void)) {
    print("sayHiWithName() called")
    sleep(2)
    // 클로저를 실행과 동시에 데이터를 반환
    completion("오늘도 빡코딩 하고 계신가요??")
}

sayHiWithName(completion: { (comment: String) in
    print("2초 뒤에 그가 말 했다! comment: ", comment)
})

sayHiWithName { comment in
    print("2초 뒤에 그가 말 했다! comment: ", comment)
}

sayHiWithName {
    print("2초 뒤에 그가 말 했다! comment: ", $0)
}

// 매개변수로 데이터를 여러개 반환하는 클로저
func sayHiWithFullName(completion: (String, String) -> Void) {
    print("sayHiWithFullName")
    sleep(2)
    completion("빡코딩", "브래드")
}

sayHiWithFullName { first, second in
    print("첫번쨰: \(first), 두번쨰: \(second)")
}

sayHiWithFullName {
    print("첫번쨰: \($0), 두번쨰: \($1)")
}

func sayHiOptional(completion: (() -> Void)? = nil) {
    print("sayHiOptional() called")
    completion?()
}

sayHiOptional {
    print("hhh")
}

// Int -> String
func transform(number: Int) -> String {
    return "숫자: \(number)"
}

let myNumber: [Int] = [0, 1, 2, 3, 4]
let transformedNumbersA: [String] = myNumber.map { (aNumber: Int) -> String in
    return "숫자: \(aNumber)"
}

let transformedNumbersB: [String] = myNumber.map { aNumber in
    return "숫자: \(aNumber)"
}

let transformedNumbersC: [String] = myNumber.map {
    return "숫자: \($0)"
}

print(transformedNumbersA)
print(transformedNumbersB)
print(transformedNumbersC)
