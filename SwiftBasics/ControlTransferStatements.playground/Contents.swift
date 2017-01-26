//: Playground - noun: a place where people can play

import UIKit

var myVal = 1

// 4 9 0

switch  myVal {
    
case 1:
    print("One")
case 2:
    print("Two")
case 3:
    print("Three")
case 5:
    print("Five")
    fallthrough
case 6:
    print("Six")
    fallthrough
case 7:
    print("Seven")
case 8:
    print("Eight")
case 4:
    print("Four")
    fallthrough
case 9:
    print("Nine")
    fallthrough
case 0:
    print("Zero")
default:
    print("Please enter value between 0 and 9")
}


var arrData = [5,65,11,99,47,66,93,9,33,5,82,95]

var i = 0

while i < arrData.count {
    
    if arrData[i] % 2 != 0 {
        i += 1
        continue
    }
    print("Value: \(arrData[i])")
    i += 1
}

print()

for val in arrData {
    
    if val % 2 == 0 {
        break
    }
    print("Value: \(val)")
}


print("End of loop")

