//
//  ViewController.swift
//  Assignment1
//
//  Created by Varun on 07/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    
    var txtOperand1 : UITextField?
    
    var txtOperand2 : UITextField?
    
    var lblResult : UILabel?
    
    var btnAdd : UIButton?
    
    var btnSub : UIButton?
    
    var btnMultiply : UIButton?
    
    var btnDiv : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtOperand1 = UITextField(frame: CGRect(x: 20, y: 30, width: 280, height: 50))
        
        txtOperand1?.borderStyle = .roundedRect
        
        //txtOperand1?.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        self.view.addSubview(txtOperand1!)
        
        txtOperand2 = UITextField(frame: CGRect(origin: CGPoint(x: (txtOperand1?.frame.origin.x)!, y: (txtOperand1?.frame.origin.y)! + (txtOperand1?.frame.size.height)! + 10), size: (txtOperand1?.frame.size)!))
        
        txtOperand2?.borderStyle = .roundedRect
        //txtOperand2?.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        self.view.addSubview(txtOperand2!)
        
        lblResult = UILabel(frame: CGRect(origin: CGPoint(x: txtOperand2!.frame.origin.x, y: (txtOperand2?.frame.origin.y)! + (txtOperand2?.frame.size.height)! + 10), size: (txtOperand2?.frame.size)!))
        
        lblResult?.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        self.view.addSubview(lblResult!)
        
        btnAdd = UIButton(frame: CGRect(x: (lblResult?.frame.origin.x)! , y: (lblResult?.frame.origin.y)! + (lblResult?.frame.size.height)! + 10 , width: 62.5, height: 30))
        
        btnAdd?.setTitle("Add", for: .normal)
        
        btnAdd?.setTitleColor( UIColor.blue, for: .normal)
        
        btnAdd?.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        btnAdd?.addTarget(self, action: #selector(add), for: .touchUpInside)
        
        self.view.addSubview(btnAdd!)
        
        btnSub = UIButton(frame: CGRect(origin: CGPoint(x: btnAdd!.frame.origin.x + btnAdd!.frame.size.width + 10, y: btnAdd!.frame.origin.y), size: btnAdd!.frame.size))
        
        btnSub?.setTitle("Sub", for: .normal)
        
        btnSub?.setTitleColor( UIColor.blue, for: .normal)
        
        btnSub?.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        btnSub?.addTarget(self, action: #selector(sub), for: .touchUpInside)
        
        self.view.addSubview(btnSub!)
        
        btnMultiply = UIButton(frame: CGRect(origin: CGPoint(x: btnSub!.frame.origin.x + btnSub!.frame.size.width + 10, y: btnSub!.frame.origin.y), size: btnSub!.frame.size))
        
        btnMultiply?.setTitle("Multiply", for: .normal)
        
        btnMultiply?.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
        btnMultiply?.setTitleColor( UIColor.blue, for: .normal)
        
        btnMultiply?.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        btnMultiply?.addTarget(self, action: #selector(multiply), for: .touchUpInside)
        
        self.view.addSubview(btnMultiply!)
        
        btnDiv = UIButton(frame: CGRect(origin: CGPoint(x: btnMultiply!.frame.origin.x + btnMultiply!.frame.size.width + 10, y: btnMultiply!.frame.origin.y), size: btnMultiply!.frame.size))
        
        btnDiv?.setTitle("Div", for: .normal)
        
        btnDiv?.setTitleColor( UIColor.blue, for: .normal)
        
        btnDiv?.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        btnDiv?.addTarget(self, action: #selector(divide), for: .touchUpInside)
        
        self.view.addSubview(btnDiv!)
        
        // Do any additional setup after loading the view, typically from a nib.
        
        self.txtOperand1?.delegate = self
        self.txtOperand2?.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func multiply()
    {
        let op1 = Float(txtOperand1!.text!)
        let op2 = Float(txtOperand2!.text!)
        
        let result = op1! * op2!
        
        lblResult?.text = "\(result)"
    }
    
    func divide()
    {
        let op1 = Float(txtOperand1!.text!)
        let op2 = Float(txtOperand2!.text!)
        
        let result = op1! / op2!
        
        lblResult?.text = "\(result)"
    }
    
    func add()
    {
        let op1 = Float(txtOperand1!.text!)
        let op2 = Float(txtOperand2!.text!)
        
        let result = op1! + op2!
        
        lblResult?.text = "\(result)"
    }
    
    func sub()
    {
        let op1 = Float(txtOperand1!.text!)
        let op2 = Float(txtOperand2!.text!)
        
        let result = op1! - op2!
        
        lblResult?.text = "\(result)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

