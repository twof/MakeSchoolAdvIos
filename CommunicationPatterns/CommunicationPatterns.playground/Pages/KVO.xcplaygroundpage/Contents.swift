//: [Previous](@previous)

import Foundation

class Sender: NSObject {
  dynamic var myString = "abc"
}

class Receiver: NSObject {
  
  let sender = Sender()
  
  override init() {
    super.init()
    subscribe()
  }
  
  deinit {
    unsubscribe()
  }
  
  func subscribe() {
    print(#function)
    sender.addObserver(self, forKeyPath: #keyPath(Sender.myString), options: [], context: nil)
  }
  
  func unsubscribe() {
    sender.removeObserver(self, forKeyPath: #keyPath(Sender.myString))
  }
  
  override func observeValue(forKeyPath keyPath: String?,
                             of object: Any?,
                             change: [NSKeyValueChangeKey : Any]?,
                             context: UnsafeMutableRawPointer?) {
    if keyPath == #keyPath(Sender.myString) {
      let sender = object as! Sender
      print(sender.myString)
    }
  }
}

//let receiver = Receiver()
//receiver.sender.myString = "cde"
