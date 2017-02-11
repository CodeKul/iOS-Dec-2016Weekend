//
//  ViewController.swift
//  LoginPageAssignment
//
//  Created by Codekul on 11/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var verticalCenterConstraint : NSLayoutConstraint!
    @IBOutlet var txtUsername : UITextField!
    @IBOutlet var txtpassword : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtUsername.delegate = self
        txtpassword.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        verticalCenterConstraint.constant = -50
        
        UIView.animate(withDuration: 0.5, animations: {
            self.view.layoutIfNeeded()
        })
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        verticalCenterConstraint.constant = 0
        
        UIView.animate(withDuration: 0.5, animations: {
            self.view.layoutIfNeeded()
        })

        textField.resignFirstResponder()
        return true
    }
    
}

