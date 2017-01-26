//: Playground - noun: a place where people can play

import UIKit

//Any
//AnyObject
//AnyClass

var myAnyObject : AnyObject = 100 as AnyObject

myAnyObject = "MyStr" as AnyObject

myAnyObject = 12.78 as AnyObject

myAnyObject = NSString()

myAnyObject = String("Str") as AnyObject

var myInt = 34

myAnyObject = myInt as AnyObject



var myAny : Any = 100

myAny = 12.89

myAny = "str"

var myArray : Array<Any> = [12, 23.90, 45, "Name", "Class", NSString()]

var myValue = myArray[3]

myValue


//Tuples

var myTuple = (12, 78.54, "Name", 34)

myTuple.2



//Optionals

var str : String? = "str"

str = nil

var dict = ["name" : "Codekul"]

dict .updateValue("Pune", forKey: "address")

str = dict["address"]

if str != nil {
    print(str!)
}

//Assertions

var a = 10;

assert(a != 0, "a shoud not equal to 0")

var res = 100/a

//Type Alias

typealias MYNEWSTRING = String

var str1 : MYNEWSTRING = "str"

typealias MYDOUBLE = Double

var myVar1 : MYDOUBLE = 12.7

myVar1





















