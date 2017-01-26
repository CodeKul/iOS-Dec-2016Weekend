//: Playground - noun: a place where people can play

import UIKit

func myFunction (name:String) -> String {
   
    let myString = "Hello \(name), Welcome to codekul"
    
    return myString
}

var str = myFunction(name:"Varun")

print(str)

func isEven(no:Int) -> Bool {
    
    var res = false
    
    if no % 2 == 0 {
        res = true
    }
    
    return res
}


var myNo = 66


if isEven(no: myNo) {
    print("\(myNo) is even")
}
else {
    print("\(myNo) is odd")
}


func displayData(_ str:String) {
    
    print("This is string by Codekul: \(str)")
}

var str1 = "Some value"

displayData(str1)


func addition(_ opr1:Double, _ opr2:Double) {
    
    let res = opr1 + opr2
    print("addition: \(res)")
}

addition(23.8, 56)


func myFunc (name : String = "MyDefault")
{
    print(name)
}

myFunc(name : "MyName")


func myVariadicType (names : String...) {
    
    print(names.count)
}

myVariadicType(names: "abc", "xyz", "pqr","123")


func myInOutType(name1: inout String, name2: inout String) {
    
    let temp = name1
    
    name1 = name2
    
    name2 = temp
}

func withoutInOut( name1:String , name2:String) {
    var name1 = name1
    var name2 = name2
    
    let temp = name1
    
    name1 = name2
    
    name2 = temp
    
    print("Name1: \(name1) Name2: \(name2)")

}

var myName1 = "abcd"
var myName2 = "xyz"

//myInOutType(name1: &myName1, name2: &myName2)

withoutInOut(name1: myName1, name2: myName2)

myName1

myName2






















