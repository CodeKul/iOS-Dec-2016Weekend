//
//  ThirdViewController.swift
//  CustomDelegateDemo
//
//  Created by Varun on 26/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var FVC : ViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let svc = segue.destination as! SecondViewController
        
        svc.colorDelegate = FVC
        
    }

    @IBAction func back(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
