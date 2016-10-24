//: [Previous](@previous)

import Foundation

class Sender {
  
  var handler: ((Int) -> ())?
  
  func someMethod() {
    handler?(5)
  }
  
}

class Receiver {
  
  func myMethod(a: Int) {
    print(5)
  }
  
}

let sender = Sender()
let receiver = Receiver()
sender.handler = receiver.myMethod
sender.someMethod()
