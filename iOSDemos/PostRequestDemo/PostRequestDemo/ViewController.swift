//
//  ViewController.swift
//  PostRequestDemo
//
//  Created by Codekul on 04/03/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let json: [String: Any] = ["id": 5,
                                   "name": "Manish",
                                   "city":"Pune",
                                   "salary":20000]
        
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        let url = URL(string: "http://192.168.100.4:7979/start/insertstudent")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = jsonData
        request.setValue("application/json", forHTTPHeaderField: "content-type")
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in

            let dict = try? JSONSerialization.jsonObject(with: data!, options: []) as! [String : Any]

            print("ID :\(dict?["status"])\nName  : \(dict?["studId"])\n")
            
        }.resume()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

