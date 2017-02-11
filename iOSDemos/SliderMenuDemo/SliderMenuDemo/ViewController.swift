//
//  ViewController.swift
//  SliderMenuDemo
//
//  Created by Codekul on 11/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var leadingConstraints : NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func menuButtonClicked(_ sender: UIButton) {
        
        if leadingConstraints.constant < 0 {
            leadingConstraints.constant = 0
        }
        else {
            leadingConstraints.constant = -200
        }
        
//        UIView.animate(withDuration: 1) {
//            self.view.layoutIfNeeded()
//        }
        
        UIView.animate(withDuration: 1, animations: { 
            self.view.layoutIfNeeded()

        }) { (menu) in
            if self.leadingConstraints.constant < 0 {
                print("menu is Closed")
            }
            else {
                print("menu is open")
            }
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

