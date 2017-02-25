//
//  EmployeeViewController.swift
//  CoreDataRelationship
//
//  Created by Codekul on 25/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit
import CoreData

class EmployeeViewController: UIViewController{
    
    var companyName : String!
    var regNo : String!
    var appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet var empID : UITextField!
    @IBOutlet var empName : UITextField!
    @IBOutlet var empLocation : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CompanyName : \(companyName)")
        print("RegNo: \(regNo)")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveData(_ sender : UIButton){
        
        
        /*
        
        let context = appdelegate.persistentContainer.viewContext
        let employee = NSEntityDescription.insertNewObject(forEntityName: "Employee", into: context) as! Employee
        employee.emp_id = Int16(empID.text!)!
        employee.name = empName.text!
        employee.location = empLocation.text!
        employee.company = nil
        
        appdelegate.saveContext()
        
        showEmp()
 */
    }
    
    func showEmp(){
        
        let context = appdelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Employee")
        
        do {
            let employees = try context.fetch(fetchRequest) as! [Employee]
            
            for employee in employees {
                    print("ID: \(employee.emp_id)\nName: \(employee.name!)\nLocation: \(employee.location!)\n")
            }
        }
        catch {
            
        }
        
        }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
}
