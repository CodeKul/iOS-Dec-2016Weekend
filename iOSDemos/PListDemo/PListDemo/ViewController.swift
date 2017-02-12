//
//  ViewController.swift
//  PListDemo
//
//  Created by Codekul on 12/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "StuInfo", ofType: "plist")
        let rootDict = NSDictionary(contentsOfFile: path!)

        print("Name: \(rootDict?.value(forKey: "Name"))\nRno: \(rootDict?.value(forKey: "Rno"))\nMarks: \(rootDict?.value(forKey: "Marks"))")
        
        
//        let dict = NSDictionary(dictionary: ["Stu2" : "Name", "2" : "Rno", "99" : "Marks"])
//        
//        dict.write(toFile: path!, atomically: true)
        
        let arrData = NSArray(array: [123,45,89,345,567])
        arrData.write(toFile: path!, atomically: true)
        
        print(path)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

