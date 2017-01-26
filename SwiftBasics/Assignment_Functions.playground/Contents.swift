//: Playground - noun: a place where people can play

import UIKit

func arithmeticOperations(caseVal: Int, num1:Int , num2:Int) -> Int{
    
    switch caseVal {
    case 1:
        return num1 + num2
    case 2 :
        return num1 - num2
    case 3:
        return num1 * num2
    case 4 :
        return num1 / num2
        
    default:
        return 0
    }
    
}

print(arithmeticOperations(caseVal: 1, num1: 3, num2: 5))

func arrayOperations(array1 : [Int], array2 : [Int]) -> [Int]{
    
    var index = 0
    var resultArray = Array(repeating: 0, count: array1.count)
    
    while index < array2.count {
        
        resultArray[index] = array1[index] + array2[index]
        
        index += 1
        
    }
    
    return resultArray
}


arrayOperations(array1: [12,45,78,909,34,34], array2: [435,67,2,89,909,435])







