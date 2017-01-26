//
//  ViewController.swift
//  BasicControls
//
//  Created by Varun on 07/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    var myLabel : UILabel?
    var myTxt : UITextField?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /*
        let myView1 = UIView(frame: CGRect(x: 10, y: 30, width: 300, height: 100))
        
        myView1.backgroundColor = UIColor.red
        
        self.view.addSubview(myView1)
        
        self.view.backgroundColor = UIColor.lightGray
        
        let myView2 = UIView(frame: CGRect(origin: CGPoint(x:myView1.frame.origin.x ,y: myView1.frame.origin.y + myView1.frame.size.height + 10), size: myView1.frame.size))
        myView2.backgroundColor = #colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1)
        
        self.view.addSubview(myView2)
        
        let myView3 = UIView(frame: CGRect(origin: CGPoint(x:myView2.frame.origin.x, y:myView2.frame.origin.y + myView2.frame.size.height + 10), size: myView2.frame.size))
        
        myView3.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        
        self.view.addSubview(myView3)
        */
        
        myLabel = UILabel()
        
        myLabel!.frame = CGRect(x: 0, y: 30, width: 320, height: 30)
        
        myLabel!.text = "This is my label"
        myLabel!.textAlignment = .center
        
        self.view.addSubview(myLabel!)
        
        myTxt = UITextField(frame: CGRect(origin: CGPoint(x:10,y:myLabel!.frame.origin.y + myLabel!.frame.size.height + 10), size: CGSize(width: 300, height: 30)))
        
        myTxt?.borderStyle = .roundedRect
        
        
        self.view.addSubview(myTxt!)
        
        self.myTxt?.delegate = self
        
        let myBtn = UIButton(frame: CGRect(origin:CGPoint(x:0,y:0), size: CGSize(width: 100, height: 30)))
        
        myBtn.center = self.view.center

        myBtn.setTitle("Click me!", for: .normal)

        myBtn.setTitleColor(UIColor.blue, for: .normal)
        
        myBtn.addTarget(self, action: #selector(self.myBtnClicked), for:.touchUpInside)
        
        self.view.addSubview(myBtn)
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func myBtnClicked() {
        
        
        myLabel!.text = myTxt!.text

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

