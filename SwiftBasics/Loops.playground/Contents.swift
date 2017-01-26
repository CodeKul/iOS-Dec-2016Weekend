//: Playground - noun: a place where people can play

import UIKit

var myInt1 = 78

var myInt2 = 48


if myInt1 < myInt2 {
    print("MyInt1 is less than myInt2")
    
    if myInt1 < 100 {
        print("Myint1 is less than 100")
    }
}
else {
    print("MyInt1 is greater than myInt2")
    
    if myInt1 > 100 {
        print("Myint1 is greater than 100")
    }
    else if myInt2 > 100{
        print("Myint2 is less than 100")
    }
    else {
        print("MyInt1 and myInt2 are less than 100")
    }

}

print("for Loop")
//for loop

var myArray = [34,67,7,256,73,112,99,12]

for element in myArray {
    
    print(element)
    
}


//while loop

print("while loop")
var i = 0

myArray.count

while i < myArray.count {
    
    print(myArray[i])
    
    i += 1
}


// repeat while loop

print("repeat while loop")

i = 0

repeat {
    print(myArray[i])
    
    i += 1

} while i < myArray.count


var myClosedRange = 0...6

var myRange = 0..<6

for element in myClosedRange {
    
    print("Codekul")
}












