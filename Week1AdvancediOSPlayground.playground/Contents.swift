//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func add(value1: Int, and value2: Int) -> Int {
    let result = value1 + value2
    return result
}

func multiply(value1: Int, value2: Int) -> Int {
    return value2*value1
}

add(value1: 10, and: 10)

func addWithClosure(this value: Int, and value2: Int, resultFunction: (Int) -> ()) {
    resultFunction(value + value2)
}

addWithClosure(this: 10, and: 20) { (result) in
    print(result)
}

func doSomething(myFunction: (Int, Int) -> Int){
    print(myFunction)
}

doSomething(myFunction: add)

func calculate(a: Int, b: Int, calculateFunction: (Int, Int) -> Int) -> Int {
    let result = calculateFunction(a, b)
    return result
}

calculate(a: 2, b: 3, calculateFunction: add)
calculate(a: 2, b: 3, calculateFunction: multiply)

calculate(a: 2, b: 3) { (value1, value2) -> Int in
    return value1-value2
}
