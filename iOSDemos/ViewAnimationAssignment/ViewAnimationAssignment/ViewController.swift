//
//  ViewController.swift
//  ViewAnimationAssignment
//
//  Created by Codekul on 11/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var topConstraint : NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func moveView(_ sender : UIButton){
        
        if topConstraint.constant == 0 {
            
            topConstraint.constant = 300
        }
        else{
            topConstraint.constant = 0
        }
        
        UIView.animate(withDuration: 0.5, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
}

