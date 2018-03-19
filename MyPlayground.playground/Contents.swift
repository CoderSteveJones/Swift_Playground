//: Playground - noun: a place where people can play

import UIKit


/// 定义一个协议
protocol MessageModelProtocol {
    var name: String {get set}
    var age: Int {get set}
}


/// 遵循一个协议
struct MessageModel: MessageModelProtocol {
    var name: String = ""
    var age: Int = 0
    var isMale: Bool = false
    
    init(with dict: [String: Any]) {
        self.name = dict["name"] as! String
        self.age = dict["age"] as! Int
        self.isMale = dict["isMale"] as! Bool
    }
}


// MARK: - 给一个协议添加延展
extension MessageModelProtocol {
    mutating func test() {
        self.name = "hello iphone 8"
    }
}


/// 喵神的文档实例
// 1.简单使用
protocol Greetable {
    var name: String { get }
    func greet()
}

struct Person: Greetable {
    let name: String
    func greet() {
        print("你好\(name)")
    }
}

Person(name: "小明").greet()

// 2.协议扩展
protocol P {
    func myMethod()
}

extension P {
    func myMethod() {
        print("协议扩展实现")
    }
}

class A: P {
    
}

class B: P {
    
}

enum HTTPMethod: String {
    case GET
    case POST
}

protocol Reques {
    
}

"https://api.onevcat.com/users/onevcat"



