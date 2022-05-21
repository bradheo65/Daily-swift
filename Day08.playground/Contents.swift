import UIKit

// 함수, 메소드 정의
func myFunction(name: String) -> String{
    return "안녕하세요? \(name) 입니다."
}

myFunction(name: "브래드1")

func myFunctionSecond(with name: String) -> String{
    return "안녕하세요? \(name) 입니다."
}

// 함수, 메소드를 호출한다. call
myFunctionSecond(with: "브래드2")

func myFunctionThird(_ name: String) -> String{
    return "안녕하세요? \(name) 입니다."
}

myFunctionThird("브래드3")
