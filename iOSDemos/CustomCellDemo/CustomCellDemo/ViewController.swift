//
//  ViewController.swift
//  CustomCellDemo
//
//  Created by Varun on 14/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrPlayerData : Array<Player>?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let p1 = Player(name: "Virat", age: "28", rank: "2", imgName: "Virat.jpg")
        
        arrPlayerData = [p1]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPlayerData!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyCustomTableViewCell
        
        let p = arrPlayerData![indexPath.row]
        
        cell.setData(name: p.name, age: p.age, rank: p.rank, imageName: p.imgName)
        
        return cell
    }

}

