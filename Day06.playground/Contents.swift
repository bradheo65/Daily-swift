import UIKit

// 유튜버 (데이터) 모델 - struct / 구조체
print("====struct====")

struct YoutuberStruct {
    var name: String
    var subscribersCount: Int
}

var devJeong = YoutuberStruct(name: "정대리", subscribersCount: 12345)

var devJeongClone = devJeong

print("devJeongClne.name: \(devJeongClone.name)")

devJeongClone.name = "Brad"

print("devJeongClne.name: \(devJeongClone.name)")
print("devJeong.name: \(devJeong.name)")

// 클래스
print("====class====")

class YoutuberClass {
    var name: String
    var subscribersCount: Int
    
    // 생성자 - 즉 메모리에 올린다.
    // init 으로 매개변수를 가진 생성자 메소드를 만들어야
    // 매개변수를 넣어서 그 값을 가진 객체(Object)를 만들 수 있다.
    init(name: String, subscribersCount: Int) {
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

var jeongDaeRi = YoutuberClass(name: "정대리", subscribersCount: 12345)
var jeongDaeRiClone = jeongDaeRi

print("값 넣기 전jeongDaeRi.name: \(jeongDaeRi.name)")
print("값 넣기 전jeongDaeRiClone.name: \(jeongDaeRiClone.name)")

jeongDaeRi.name = "Brad"

print("값 넣기 후jeongDaeRi.name: \(jeongDaeRi.name)")
print("값 넣기 후jeongDaeRiClone.name: \(jeongDaeRiClone.name)")
