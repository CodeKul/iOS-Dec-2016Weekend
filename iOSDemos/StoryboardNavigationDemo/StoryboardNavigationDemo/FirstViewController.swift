//
//  FirstViewController.swift
//  StoryboardNavigationDemo
//
//  Created by Mac on 21/01/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var txtData : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "FVC2SVC" {
            
            let SVC = segue.destination as! SecondViewController
            SVC.strData = txtData.text
            
        }
        else if segue.identifier == "FVC2TVC" {
            
            let TVC = segue.destination as! ThirdViewController
            TVC.strData = txtData.text
            
        }
        
    }

}
