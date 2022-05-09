import UIKit
import Darwin

enum School {
    case elementary
    case middle
    case high
}

let yourSchool = School.elementary
print("yourSchool: \(yourSchool)")

enum Grade: Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade : \(yourGrade)")
print("yourGradeRawValue : \(yourGrade.rawValue)")

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    
    func get() -> String {
        switch self {
        case .elementary(let name):
            return name
        case .middle(let name):
            return name
        }
    }
}

let yourElementarySchoolName = SchoolDetail.elementary(name: "yagom")
let yourMiddleSchoolName = SchoolDetail.middle(name: "yagom-school")
print("yourElementarySchoolName : \(yourElementarySchoolName.get())")
print("yourMiddleSchoolName : \(yourMiddleSchoolName.get())")
