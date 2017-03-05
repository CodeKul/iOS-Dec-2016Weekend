//
//  ViewController.swift
//  GestureDemo
//
//  Created by Codekul on 28/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var view1 : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(self.leftSwiped))
        swipeGesture.direction = .right
    
        view1.addGestureRecognizer(swipeGesture)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.view1Tapped))
        tapGesture.numberOfTapsRequired = 3
        
        view1.addGestureRecognizer(tapGesture)
    
        
    }

    func leftSwiped() {
        
        view1.backgroundColor = UIColor.red
    }
    
    func view1Tapped() {
        
        view1.backgroundColor = UIColor.green
    }
    
    @IBAction func longPressGestureMethod() {
        view1.backgroundColor = UIColor.blue
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesEnded")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesMoved")
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesCancelled")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

