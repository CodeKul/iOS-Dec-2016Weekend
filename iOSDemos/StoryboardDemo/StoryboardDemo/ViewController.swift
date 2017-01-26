//
//  ViewController.swift
//  StoryboardDemo
//
//  Created by Varun on 08/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var myView: UIView!
    
    @IBOutlet var myLbl: UILabel!
    
    @IBOutlet var mySlider: UISlider!
    
    var arrColors = ["Green","Blue","Yellow","Red","Brown"]
    
    var arrNames = ["Raihan","Manasveena","Harsh", "Varun"]
    
    var arrNumbers = [1,2,3,4,5,6,7,8,9,0]
    
    var str1 = ""
    var str2 = ""
    var str3 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myView.backgroundColor = UIColor.green
        
        str1 = arrColors[0]
        str2 = arrNames[0]
        str3 = "\(arrNumbers[0])"
        
        myLbl.text = str1 + " " + str2 + " " + str3

    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        myLbl.text = "\(sender.value)"
    }
    
    @IBAction func datePickerValueChanged(_ sender:UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "dd-MM-yyyy hh:mm a"
        
        myLbl.text = dateFormatter.string(from: sender.date)
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        
        if sender.isOn {
            mySlider.isUserInteractionEnabled = true
        }
        else {
            mySlider.isUserInteractionEnabled = false
        }
    }
    
    @IBAction func segmentedControllerChnaged(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            myView.backgroundColor = UIColor.red
        }
        else if sender.selectedSegmentIndex == 1 {
            myView.backgroundColor = UIColor.green
        }
        else {
            myView.backgroundColor = UIColor.blue
        }
    }
    
    
    //PickerView Datasource
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return arrColors.count
        }
        else if component == 2{
            
            return arrNumbers.count
        }
        
        return arrNames.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            return arrColors[row]
        }
        else if component == 2{
            return "\(arrNumbers[row])"
        }
        return arrNames[row]
    }
    
    //PickerView Delegate methods
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            var uiColor = UIColor.black
        if component == 0 {
            str1 = arrColors[row]
        
            switch arrColors[row] {
            case "Green":
                uiColor = UIColor.green
            case "Blue":
                uiColor = UIColor.blue
            case "Yellow":
                uiColor = UIColor.yellow
            case "Brown":
                uiColor = UIColor.brown
            
            default:
                uiColor = UIColor.red
            }
        }
        else if component == 1{
            
            str2 = arrNames[row]
        }
        else{
            str3 = "\(arrNumbers[row])"
        }
        myView.backgroundColor = uiColor
        myLbl.text = str1 + " " + str2 + " " + str3
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

