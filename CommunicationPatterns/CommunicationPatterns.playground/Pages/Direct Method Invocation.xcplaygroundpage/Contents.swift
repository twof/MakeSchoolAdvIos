//: [Previous](@previous)

import Foundation

class Sender {
  
  let receiver = Receiver()
  
  func sendMessage() {
    receiver.myMethod(a: 5)
  }
  
}

class Receiver {
  
  func myMethod(a: Int) {
    print(a)
  }
  
}

let sender = Sender()
sender.sendMessage()
