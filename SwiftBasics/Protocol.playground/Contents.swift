//: Playground - noun: a place where people can play

import UIKit

protocol SuperProtocol {
   
    func myMethod()
}

protocol myProtocol : SuperProtocol {
    
    
}

class A : SuperProtocol {
    internal func myMethod() {
        
    }
}

class B : A, myProtocol{
    
    override func myMethod() {
        
    }
}
