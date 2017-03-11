//
//  ViewController.swift
//  NewGestureDemo
//
//  Created by Codekul on 11/03/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var view1 : UIView!
    @IBOutlet var view2 : UIView!
    @IBOutlet var lblPan : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped))
        tapGesture.numberOfTapsRequired = 1;
        
        view2.addGestureRecognizer(tapGesture)
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(leftSwipe))
        swipeGesture.direction = .left
        
        view2.addGestureRecognizer(swipeGesture)
        
        let pangesture = UIPanGestureRecognizer()
    }

    @IBAction func longPress(_ sender: Any) {
        view1.backgroundColor = UIColor.green
    }
    
    
    
    @IBAction func pinchGesture(_ sender: Any){
        view1.backgroundColor = UIColor.yellow
        print("pinchGesture")
    }
    
    func leftSwipe() {
        
        view1.backgroundColor = UIColor.blue
    }
    
    func viewTapped() {
        
        view1.backgroundColor = UIColor.red
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //print("touchesBegan")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //print("touchesEnded")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //print("touchesMoved")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

