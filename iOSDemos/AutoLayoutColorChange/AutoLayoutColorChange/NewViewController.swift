//
//  NewViewController.swift
//  AutoLayoutColorChange
//
//  Created by Codekul on 29/01/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    
    var changeDelegate : ViewController?
    
    var bgColor : UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = bgColor
        // Do any additional setup after loading the view.
    }

    @IBAction func btnBack(_ sender: UIButton) {
        
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
