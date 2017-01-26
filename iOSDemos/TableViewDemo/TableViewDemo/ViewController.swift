//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Varun on 14/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        print("numberOfSections")
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print("numberOfRowsInSection")
        if section == 0 {
            return 15
        }
        return 20
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerLbl = UILabel(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 30))
        
        if section == 0 {
        headerLbl.text = "Section 1"
        }
        else {
            headerLbl.text = "Section 2"
        }
        headerLbl.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        headerLbl.font = UIFont.systemFont(ofSize: 15)
        headerLbl.textAlignment = .center
        
        return headerLbl
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = "Row: \(indexPath.row)"
        cell?.detailTextLabel?.text = "Section \(indexPath.section)"
        print("cellForRowAt indexPath: \(indexPath.row)")
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("didSelectRowAt indexPath : \(indexPath.row)")
    }
}

