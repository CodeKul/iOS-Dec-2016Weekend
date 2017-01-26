//
//  ViewController.swift
//  DatepikarviewAssignment
//
//  Created by Varun on 07/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLbl: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
    
    }
    //Any replaced UIDatepicar
    
   
    @IBAction func datepickarvalue(_ sender:UIDatePicker) {
        
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "dd-mm-yyyy :  hh:mm:ss a"
        
        let strDate = dateFormatter.string(from: sender.date)
        myLbl.text = strDate
        
    }
    
        

override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

