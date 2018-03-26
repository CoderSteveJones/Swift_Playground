//: Playground - noun: a place where people can play

import UIKit


/*
class Person {
    
    let name: String?
    let age: Int?
    
    init(name: String,age: Int) {
        self.name = name
        self.age = age
    }
}

let p = Person(name: "hah", age: 10)
var defaultAddress: String? /*= "haha"*/
defaultAddress = nil
if let address = defaultAddress {
    print(address)
}else {
    print("没值")
}
*/
 
 
/*
//隐式解析可选类型
var mobileNumber: Int64! = 13912345678 // 第一次申明有初始值
print("您的电话号码是\(mobileNumber)") // 不需要使用!强制解析
// 打印内容:**您的电话号码是****Optional(13912345678)**
// 还是不建议直接强制解析，因为实际项目中可能中间已经对该值做了改变，若为nil则会运行错误导致APP崩溃
if let number = mobileNumber { // 建议的做法
    print("您的电话号码是\(number)")
    // 打印内容:**您的电话号码是****13912345678**
} else {
    print("您没有记录电话号码")
}
*/
/*
// 空和运算付
var status: Int?
print(status ?? 3)
*/
/*
// 返回值为可选类型
func returnPossibleValue(value: Bool) -> String? { // 返回类型为可选String类型
    if value {
        return "返回类型是可选类型值" // 如果为真，返回Int类型的值1
    } else {
        return nil // 如果为假，返回nil
    }
}

let possibleValue = returnPossibleValue(value: true) // 要用可选绑定判断再使用，因为possibleValue为String？可选类型
if let value = possibleValue {
    print(value)
} else {
    print("none value")
}
*/

/*
// 返回可选类型闭包
func returnOptionalFun(value: Bool) -> (() -> Void)? {
    if value {
        return {
            print("可选类型的闭包")
        }
    }else {
        return nil
    }
}

let possibleFun = returnOptionalFun(value: true)
if let aFunc = possibleFun {
    print(aFunc())
}else {
    print("nil")
}*/

/*
// 可失败构造器
struct Cat {
    var color: UIColor?
    var weight: Double?
    
    init?(color: UIColor,weight: Double) {
        if color == nil {
            return nil
        }
        self.color = color
        self.weight = weight
    }
    
}
*/

/*
class Room {
    var address: String?
    var area: String?
}


class Person {
    var name: String?
    var room: Room?
}

let p = Person()
let r = Room()
r.address = "addd"
r.area = "area"
p.room = r
if let add = p.room?.address {
    print(add)
}else {
    print("no value")
}
*/

/*
// 错误处理
// 操作错误处理枚举
enum OperationError: Error {
    case ErrorOne
    case ErrorTwo(String) // 带关联值的枚举属性
    case ErrorOthers
}

func throwDriver(num: Int) throws {
    if num == 1 {
        throw OperationError.ErrorOne
    }else if num == 2 {
        throw OperationError.ErrorTwo("数据类型错误")
    }else if num == 3 {
        throw OperationError.ErrorOthers
    }
}

do {
    print("使用do-catch捕获错误")
    try throwDriver(num: 2) // 使用try尝试请求
    print("未捕获到错误")
} catch OperationError.ErrorOne { // catch去捕捉是否又throw出来的错误
    print("捕捉到错误：ErrorOne")
} catch OperationError.ErrorTwo(let message) { // 可以使用let 获取枚举关联值
    print("捕捉到错误：ErrorTwo" + message)
} catch OperationError.ErrorOthers {
    print("捕捉到错误：ErrorOthers")
}
*/

/*
// map
let nums = [1, 2, 3]
let sumNums = nums.map {
    return ($0 + 1)
}
print(sumNums)
*/


// 切片







