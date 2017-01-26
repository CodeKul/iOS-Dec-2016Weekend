//: Playground - noun: a place where people can play

import UIKit

var myInt = 12

myInt = 12

var myDouble = 12.9459850353657

myDouble = 9


var myFloat : Float = 12.892335

var result : Double = Double(myInt) + myDouble + Double(myFloat)

var myBool : Bool

myBool = false


var firstNum , secondNum : Double

firstNum = 30.5666

secondNum = firstNum + 40

//Operators

    /*
        +
        -
        *
        /
        %
    */

var a = 65;
var b = 98;

var result1 = b % a;

var str = "Code" + "kul"

//Collections

//Array

var myArray = [1.5,2.9,3.4,4.0]

var myNewArray : [Double]

myNewArray  = [3,4,7,8,7]

var resultArray = myArray

resultArray.append(contentsOf: myNewArray)

resultArray.append(44)

resultArray[3]

resultArray.contains(444)

resultArray.capacity
resultArray.count

myNewArray.capacity

resultArray.insert(23, at: 10)

resultArray.popLast()

resultArray.remove(at: 0)

resultArray

//Dictionary

var myDict = ["first": 1,"second" : 2, "third" : 3]

var myNewDict : [Int : Double]

myNewDict = [1 : 4.89]

myNewDict.count

myDict["first"] = 5

myNewDict.updateValue(5.12, forKey: 1)

myNewDict.updateValue(22.11, forKey: 2)

myNewDict[1]







