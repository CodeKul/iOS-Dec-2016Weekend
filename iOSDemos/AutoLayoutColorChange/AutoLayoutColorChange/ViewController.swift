//
//  ViewController.swift
//  AutoLayoutColorChange
//
//  Created by Codekul on 29/01/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var bgColor : UIColor?
    
    @IBOutlet weak var viewOrange: UIView!
    @IBOutlet weak var viewBlue: UIView!
    @IBOutlet weak var viewGrey: UIView!
    @IBOutlet weak var viewGreen: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let vc = segue.destination as! NewViewController
       //vc.changeDelegate = self
        let btn = sender as! UIButton
    
        vc.bgColor = btn.superview?.backgroundColor
    }
}

