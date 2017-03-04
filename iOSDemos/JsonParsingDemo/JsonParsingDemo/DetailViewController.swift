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
    @IBOutlet var lblDesc : UILabel?
    @IBOutlet var lblStatus : UILabel?
    @IBOutlet var lblFundedAmt : UILabel?
    @IBOutlet var lblBasketAmt : UILabel?
    @IBOutlet var lblActivity : UILabel?
    @IBOutlet var lblimg : UILabel?
  

    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName?.text = loan?.name
        lblId?.text = "\((loan?.id)!)"
        let imgID = loan?.image?["id"]
        let templateid = loan?.image?["template_id"]
        lblimg?.text = "Id : \(imgID!) , template_id : \(templateid!)"
        let arrLang = (loan?.desc?["languages"])!
        lblDesc?.text = "languages : \(arrLang[0])"
        lblStatus?.text = loan?.status
        lblBasketAmt?.text = "\((loan?.basketAmount)!)"
        lblFundedAmt?.text = "\((loan?.fundedAmount)!)"
        lblActivity?.text = loan?.activity
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
