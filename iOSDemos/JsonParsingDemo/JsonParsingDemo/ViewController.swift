//
//  ViewController.swift
//  JsonParsingDemo
//
//  Created by Codekul on 26/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    var arrLoans : [[String : Any]]?
    var loanArray : [Loan]?
    
    @IBOutlet var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrLoans = []
        
        URLSession.shared.dataTask(with: URL(string : "http://api.kivaws.org/v1/loans/search.json?status=fundraising")!) { (data, response, error) in
            
            
//            
//            if error == nil {
//                do {
//                    let dataDict = try JSONSerialization.jsonObject(with: data!, options: []) as! [String : Any]
//                    
//                  arrLoans   = dataDict["loans"] as! [[String : Any]]
//                    
//                    for loan in arrLoans {
//                        
//                    }
//                }
//                catch {
//                    print("Something went wrong\n")
//                }
//                
//            }
            
            if error == nil {
                do {
                    let dataDict = try JSONSerialization.jsonObject(with: data!, options: []) as! [String : Any]
                    
                    self.arrLoans = (dataDict["loans"] as! [[String : Any]])
                    
                    self.performSelector(onMainThread: #selector(self.reloadTableView), with: nil, waitUntilDone: true)
                    
                    }
                catch {
                    print("Something went wrong\n")
                }
                
            }
        }.resume()
        
        
    }
    
    func reloadTableView() {
        
        parseLoanObject()
        self.tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (arrLoans?.count)!
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "loanCell")
        
        let loan = self.arrLoans?[indexPath.row]
        var location = loan?["location"] as! [String :Any]
        cell?.textLabel?.text = loan?["name"]! as! String?
        cell?.detailTextLabel?.text = location["country"] as! String?
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        detailVC.loan = loanArray?[indexPath.row]
        
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    func parseLoanObject(){
        loanArray = []
        var loanObj: Loan
        
        
        
        for loan in self.arrLoans!{
            
            loanObj = Loan();
            loanObj.name = loan["name"] as? String
            loanObj.id = loan["id"] as? Int
            
            loanArray?.append(loanObj)
        }
        
    }
}

