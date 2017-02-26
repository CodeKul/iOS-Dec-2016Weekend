//
//  DetailViewController.swift
//  JsonParsingDemo
//
//  Created by Codekul on 26/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var loan : Loan?
    
    @IBOutlet var lblName : UILabel?
    @IBOutlet var lblId : UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName?.text = loan?.name
        lblId?.text = "\((loan?.id)!)"
        
        // Do any additional setup after loading the view.
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
