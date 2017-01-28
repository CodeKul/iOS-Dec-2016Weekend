//
//  SecondViewController.swift
//  StoryboardNavigationDemo
//
//  Created by Mac on 21/01/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var strData : String?
    @IBOutlet var myLbl : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad SVC")

        myLbl.text = strData
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        print("viewWillAppear SVC")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        print("viewDidAppear SVC")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear SVC")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear SVC")
    }
 
    @IBAction func backButtonClicked(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
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
