import UIKit

var isDarkMode : Bool = true

if (isDarkMode == true) {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}

if isDarkMode {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}

if !isDarkMode {
    print("다크모드 입니다.")
} else {
    print("다크모드가 아닙니다.")
}

var title : String = isDarkMode == true ? "다크모드 입니다." : "다크모드가 아닙니다."

print("title: \(title)")

var title2 : String = !isDarkMode ? "다크모드 아닙니다." : "다크모드가 입니다."

print("title2: \(title2)")
