//: [Previous](@previous)

import Foundation

class Sender {
  
  func send() {
    let notificationName: NSNotification.Name = NSNotification.Name(rawValue: "Hello")
    let payload = ["name": "John"]
    NotificationCenter.default.post(name: notificationName, object: self, userInfo: payload)
  }
  
}

class Receiver {
  
  init() {
    subscribe()
  }
  
  deinit {
    unsubscribe()
  }
  
  func subscribe() {
    let notificationName: NSNotification.Name = NSNotification.Name(rawValue: "Hello")
    NotificationCenter.default.addObserver(self,
                                           selector: #selector(Receiver.receive),
                                           name: notificationName,
                                           object: nil)
  }
  
  func unsubscribe() {
    NotificationCenter.default.removeObserver(self)
  }
  
  @objc func receive(notification: Notification) {
    let name = notification.userInfo!["name"] as! String
    print("Hello, \(name).")
  }
  
}

//let receiver1 = Receiver()
//let receiver2 = Receiver()
//let receiver3 = Receiver()
//let sender = Sender()
//sender.send()


