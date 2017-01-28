//
//  ViewController.swift
//  CustomDelegateDemo
//
//  Created by Varun on 26/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MyProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func changeBacgroundColor(color: UIColor) {
        self.view.backgroundColor = color
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! ThirdViewController
        
        vc.FVC = self
        
    }

}

