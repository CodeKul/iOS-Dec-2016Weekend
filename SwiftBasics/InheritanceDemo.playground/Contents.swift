//: Playground - noun: a place where people can play

import UIKit

class Employee {
    
    var empId : Int
    var name : String
    var designation : String
    var sallary : Float
    
    init(empId:Int, name:String, designation:String, sallary:Float) {
        
        self.empId = empId
        self.name = name
        self.designation = designation
        self.sallary = sallary
    }
    
    func doTask() {
        
        print("Employee task in inprogress")
    }
}

class ContractedEmp : Employee {
    
    var isValidEmp : Bool
    var contractDuration : Int
    
    init(empId:Int, name:String, designation:String, sallary:Float, isValidEmp:Bool, contractDuration:Int) {
    
        self.isValidEmp = isValidEmp
        self.contractDuration = contractDuration

        super.init(empId: empId, name: name, designation: designation, sallary: sallary)
    }
    
    override func doTask() {
        
        print("ContractedEmp task in inprogress")

    }
}

var emp = Employee(empId: 1, name: "John", designation: "CEO", sallary: 10)

var cEmp = ContractedEmp(empId: 2, name: "Abhi", designation: "Director", sallary: 20, isValidEmp: true, contractDuration: 5)

emp.doTask()

cEmp.doTask()





