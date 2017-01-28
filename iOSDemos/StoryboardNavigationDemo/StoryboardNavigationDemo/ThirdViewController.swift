//
//  ThirdViewController.swift
//  StoryboardNavigationDemo
//
//  Created by Mac on 21/01/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet var lblData : UILabel?
    var strData : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblData?.text = strData
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
