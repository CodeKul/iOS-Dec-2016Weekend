//
//  ViewController.swift
//  UserDefaultsDemo
//
//  Created by Codekul on 11/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let isUserLoggedin = UserDefaults.standard.value(forKey: "isUserLoggedin")
        
        if isUserLoggedin != nil {
            print("Loggedin")
        }
        else {
            print("Not loggedin")
            UserDefaults.standard.set("true", forKey: "isUserLoggedin")
            UserDefaults.standard.synchronize()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

