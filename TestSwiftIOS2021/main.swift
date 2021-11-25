//
//  main.swift
//  TestSwiftIOS2021
//
//  Created by Kaloyan Vachkov on 24.11.21.
//

import Foundation

//primitive types, let -> const ; var -> variable
var myInt: Int = 8
var myDouble: Double = 3.45
var myBool: Bool = true
var myString: String = "Kaloyan"
var myFloat: Float = 4.3
var myShort: CShort = 4
var myUnsigned: CUnsignedInt = 1
var myChar: Character = "c"

//every global definition is maintained as main
let a:Int = 4 // let defines const
let b:Int = 20// data type can be initialized implicitly or explicitly
let c:Int = a + b
var myVariable = 42 // var defines variable
var myFloat2: Float  = 4
var testString = "Kaloyan"
var concatStringInt = testString + String(a) // we kame an istance of String with parametere Integer
let stringWithInterpolation = "Test strint with interpolation: \(testString) is \(b) years old."
var stringWithMultipleLines = """
                                    Kaloyan
                                        is
                                    beautiful
                                        and
                                    handsome
                                """ // same as in Java 17/15

//Arrays/Dictionaries

var shoppingList = ["eggs" , "milk", "chocolate"] // acces element with operator[] first element is 0
shoppingList[1] = "bread" // changes value

var occupations = [ "Kaloyan" : "IT", "Boyan" : "Banker" , "Oscar" : "Bartender"]
occupations["Andrey"] = "Teacher" // adding new key:value

shoppingList.append("butter") // when adding element to array, the array grows automatically

// initialize empty arrays/dictionaries
let emptyArray: [Int] = []
let emptyDictionary: [String:Float] = [:]
//control flows
let myArray = [4,5,10,12,3,7,8]
var sum = 0
for number in myArray{ // number as for-each loop in c++ just auto &i
    sum += number
}

// if and let can be used together to check if a value is missing
// optionals String? can be String literal or nil

var myOptionalString: String? = "Hello"
//print(myOptionalString == nil)


//check optionalvalue
var optionalName: String? = "Kaloyan"
var greeting = "Hello"
if let name = optionalName{
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, nil!"
}

//if value is nil print default String
var myName: String? = nil
var myNickname: String = "Vachkov"
let informalGreeting = "Hello \(myName ?? myNickname)" // if myName is nil print myNickname, else print myName

//switch

let vegetable = "red cucumber"

switch vegetable { // you do not need break after every case as in c++ or java
case "selary":
    print("Good!")
case "cucumber", "watercrass":
    print("Very good!")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Well!")
}

//another for-in : “You use for-in to iterate over items in a dictionary by providing a pair of names to use for each key-value pair. Dictionaries are an unordered collection, so their keys and values are iterated over in an arbitrary order.”

let interestingNumbers = [
    "Prime" : [2,3,5,7,11,13,17],
    "Fibonacci" : [1,1,2,3,5,8],
    "Square" : [1,4,9,16,25,36,49,64]
]

var largest = 0

for(_,numbers) in interestingNumbers{
    for number in numbers{
        if number > largest{
            largest = number
        }
    }
}

//print(largest)

//while

var n = 2

while n < 100{
    n *= 2
}

//print(n)

var n2 = 2

repeat{
    n2 *= 2
}while n2 < 100

//print(n2)


//for loop

var total = 0

for i in 0...4{ // 0...4 includes bounds / 0..<4 excludes upper bound
    total += i
}

//print(total)

//functions and closures




