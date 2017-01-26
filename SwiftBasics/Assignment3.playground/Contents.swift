//: Playground - noun: a place where people can play

import UIKit

// 1) Create a class for complex numbers (a + bi) 

class ComplexNumber {
    
    var realPart : Int
    
    var imaginaryPart : Int
    
    init(_ realPart : Int ,_ imaginaryPart : Int) {
        
        self.realPart = realPart
        self.imaginaryPart = imaginaryPart
    }
    
    init() {
        realPart = 0
        imaginaryPart = 0
    }
    
    func printComplexNumber() {
        if imaginaryPart < 0 {
            print("(\(realPart)\(imaginaryPart)i)")

        }
        else{
            print("(\(realPart) + \(imaginaryPart)i)")

        }
    }
    
    func add(_ complexNumber: ComplexNumber) -> ComplexNumber {
        
        let result = ComplexNumber()
        
        print("------------------------------")
        self.printComplexNumber()
        complexNumber.printComplexNumber()
        
        result.realPart = self.realPart + complexNumber.realPart
        result.imaginaryPart = self.imaginaryPart + complexNumber.imaginaryPart
        
        return result
    }
    
    func substract(_ complexNumber: ComplexNumber) -> ComplexNumber {
        
        //(a+bi)- (c+di) = (a-c) + (b-d)i
        
        let result = ComplexNumber()
        
        result.realPart = self.realPart - complexNumber.realPart
        result.imaginaryPart = self.imaginaryPart - complexNumber.imaginaryPart
        
        return result
    }
    
    func multiply(_ complexNumber : ComplexNumber) -> ComplexNumber {
        
        let result = ComplexNumber()
        
         result.realPart = ( self.realPart * complexNumber.realPart ) - (self.imaginaryPart * complexNumber.imaginaryPart)
        
         result.imaginaryPart = ( self.realPart * complexNumber.imaginaryPart ) + (self.imaginaryPart * complexNumber.realPart)
        
        return result
    }
    
}

var complexNumber1 = ComplexNumber(2,3)

var complexNumber2 = ComplexNumber(4,2)

complexNumber1.printComplexNumber()
complexNumber2.printComplexNumber()

var result = complexNumber1.add(complexNumber2)

result.printComplexNumber()

result = complexNumber1.substract(complexNumber2)

result.printComplexNumber()

result = complexNumber1.multiply(complexNumber2)

result.printComplexNumber()

