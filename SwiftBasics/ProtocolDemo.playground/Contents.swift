//: Playground - noun: a place where people can play

import UIKit


protocol myProtocol {
    
    func printResult(a : Int)
    
}


class Class1 : myProtocol {
    
    func printResult(a : Int) {
        print("This is result: \(a)")
    }
}


class Class2 {
    
    
    var delegate : myProtocol?
    
    func addDataAndPrintResult() {
        
        let a1 = 12 + 45
        
        delegate?.printResult(a : a1)
    }
}


var class1 = Class1()

var class2 = Class2()


class2.delegate = class1

class2.addDataAndPrintResult()

class1.printResult(a: 90)
