//: Playground - noun: a place where people can play

import UIKit
//Today we're talking about closures
//closures are anonymous functions that are passed to other functions as arguments/parameters

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

//day two
//today we talk about generics

func swapFirstAndLast<T>(array: [T]) -> [T] {
    var newArray = array
    let temp = newArray[0]
    newArray[0] = newArray[newArray.count-1]
    newArray[array.count-1] = temp
    return newArray
}

var value = "asdfsdf"


var array = ["sfdf", "sfff", "hello", "Hey"]

swapFirstAndLast(array: array)

func findFirst<T: Equatable>(element: T, array: [T]) -> Int?{
    for (index, arrayElement) in array.enumerated() {
        if arrayElement == element {
            
            return index
        }
    }
    return nil
}

func deleteFirst<T: Equatable>(element: T, array: [T]) -> [T]{
    var newArray = array
    
    for (index, arrayElement) in newArray.enumerated() {
        if arrayElement == element {
            newArray.remove(at: index)
            return newArray
        }
    }
    return array
}

deleteFirst(element: "hello", array: array)
findFirst(element: "Hey", array: array)


private func `struct`(myString: String) {
    print(myString)
}

let `class` = "Why"
print(`class`)

/*
 Wrapping a web api:
 No direct networking calls
 strongly typed return data rather than untyped json
 No string based interaction
 not dealing with building urls
 
 going to be working with openweathermap api
 
 */


