//: Playground - noun: a place where people can play

import UIKit

class Animal {
    
    var name : String
    
    init() {
        self.name = "animal"
    }
    
    init(name : String) {
        self.name = name
    }

    func getName() -> String {
        return self.name
    }
    
    func setName(name : String) {
        self.name = name
    }
    
    func eat() {
        print("\(name) is eating")
    }
    
    func walk() {
        print("\(name) is walking")
    }
}

var animal = Animal(name : "Dog")

var animal1 = Animal(name : "Cat")

animal1.eat()

animal1.walk()

//animal.setName(name: "Cat")

animal.eat()

animal.walk()

animal.eat()

animal.name

animal.getName()

var cat1 = Animal(name:"Cat1")

cat1.name

cat1.eat()

cat1.walk()





