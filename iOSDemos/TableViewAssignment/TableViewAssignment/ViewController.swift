//
//  ViewController.swift
//  TableViewAssignment
//
//  Created by Varun on 14/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    let EmpDisct = ["Emp1":"psl","Emp2":"Infosys"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return EmpDisct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "employeeCell")
        var key : String
        
        if indexPath.row == 0 {
            
            key = "Emp1"
        }
        else{
            key = "Emp2"
        }
        
        cell?.textLabel?.text = key
        cell?.detailTextLabel?.text = EmpDisct[key]
        
        return cell!
    }
}

