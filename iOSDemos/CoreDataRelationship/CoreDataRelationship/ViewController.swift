//
//  ViewController.swift
//  CoreDataRelationship
//
//  Created by Codekul on 25/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet var txtCompnayName : UITextField!
    @IBOutlet var txtRegNo : UITextField!
    var employee : Employee!
    
    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.saveCompanyDetail()
        
        self.getCompanyData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "empCell")
        return cell!
    }
    
    func saveCompanyDetail() {
        
        let conetxt = appDelegate.persistentContainer.viewContext

        let company = NSEntityDescription.insertNewObject(forEntityName: "Company", into: conetxt) as! Company
        
        let employee = NSEntityDescription.insertNewObject(forEntityName: "Employee", into: conetxt) as! Employee
        
        employee.name = "Varun"
        employee.emp_id = 5
        employee.location = "Pune"
        employee.company = company
        
        company.reg_no = "ABC123"
        company.name = "CodeKul"
        company.employees = [employee]
        
        appDelegate.saveContext()
    }
    
    func getCompanyData() {
        
        let context = appDelegate.persistentContainer.viewContext
        
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "Company")
        
        do {
            let companies = try context.fetch(fetchReq) as! [Company]
            
            for company in companies {
                
                print("Reg No: \(company.reg_no!)\nName: \(company.name!)\nEmployees:\n")
                let employees = company.employees?.allObjects as! [Employee]
                
                for employee in employees {
                    print("ID: \(employee.emp_id)\nName: \(employee.name!)\nLocation: \(employee.location!)\n")
                }
            }
        }
        catch {
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func proccessForEmployee(_ sender : UIButton){
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var VC = segue.destination as! EmployeeViewController
        
        VC.regNo = txtRegNo.text
        VC.companyName = txtCompnayName.text
        
        
    }
}

