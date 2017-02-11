//
//  ViewController.swift
//  sliderAssignment_9Jan
//
//  Created by Varun on 09/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var alphaSlider: UISlider!
    @IBOutlet var myView: UIView!
    
    @IBOutlet var redLbl : UILabel!
    @IBOutlet var greenLbl : UILabel!
    @IBOutlet var blueLbl : UILabel!
    @IBOutlet var alphaLbl : UILabel!
    
    var redVal :Float = 0.0
    var greenVal:Float = 0.0
    var blueVal:Float = 0.0
    var alphaVal:Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderValueChange(_ sender: UISlider) {
        if sender == redSlider {
            redVal = redSlider.value
            redLbl.text = "\(redVal)"
        }
        else if sender == greenSlider {
            greenVal = greenSlider.value
            greenLbl.text = "\(greenVal)"
        }
        else if sender == blueSlider {
            blueVal = blueSlider.value
            blueLbl.text = "\(blueVal)"
        }
        else {
            alphaVal = alphaSlider.value
            alphaLbl.text = "\(alphaVal)"
        }
        
        myView.backgroundColor = UIColor.init(colorLiteralRed: redVal/255.0, green: greenVal/255.0, blue: blueVal/255.0, alpha: alphaVal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

