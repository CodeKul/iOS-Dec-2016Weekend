//: Playground - noun: a place where people can play

import UIKit

// Any 

var testAny : Any

testAny = "this is a test String"

testAny = 11.1

testAny = 55

testAny = true

// AnyObject

var testAnyObject : AnyObject

testAnyObject = "testAnyObject" as AnyObject

testAnyObject =  true as AnyObject

// type Alias

typealias myStringType = String

var testString : myStringType

testString = "this is myStringType"

// Assertions

var balanceAmount = 5000

assert(balanceAmount >= 5000, "minimum balance should be 5000Rs")

// Optionals

var optionalStr : String?

if (optionalStr == nil){
    
    optionalStr = "optional str"
    
    optionalStr! + " = another str"
    
}


