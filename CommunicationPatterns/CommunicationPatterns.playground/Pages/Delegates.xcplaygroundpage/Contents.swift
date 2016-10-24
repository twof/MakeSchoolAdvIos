//: Playground - noun: a place where people can play

import Foundation

protocol SenderDelegate: class {
  func myMethod(a: Int)
}

class Sender {
  
  weak var delegate: SenderDelegate?
  
  func someMethod() {
    delegate?.myMethod(a: 5)
  }
  
}

class Receiver: SenderDelegate {
  
  func myMethod(a: Int) {
    print(a)
  }
}

let sender = Sender()
let receiver = Receiver()
sender.delegate = receiver
sender.someMethod()
