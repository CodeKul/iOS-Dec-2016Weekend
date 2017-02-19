//
//  ViewController.swift
//  XMLParsing
//
//  Created by Codekul on 19/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, XMLParserDelegate , UITableViewDelegate , UITableViewDataSource {

    var arrFoods : Array<String>?
    var data : String?
    var arrFood : Array<Food>?
    var foodName : String?
    var foodPrice : String?
    var foodDesc : String?
    var calories : String?
    var currentElement : String?
    var food : Food?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let parser = XMLParser(contentsOf: URL(string: "http://www.xmlfiles.com/examples/simple.xml")!)
        parser?.delegate = self
        parser?.parse()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (arrFood?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell") as! FoodTableViewCell
        
        cell.lblFoodName.text = arrFood![indexPath.row].name
        cell.lblFoodCal.text = arrFood![indexPath.row].calories
        cell.lblFoodDesc.text = arrFood![indexPath.row].descriptn
        cell.lblFoodPrice.text = arrFood![indexPath.row].price
        
        return cell
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        /*
        if elementName == "breakfast-menu"{
            arrFoods = Array()
        }
        if elementName == "name" {
            data = String()
        }
 */     currentElement = elementName
        
        
        switch elementName {
        case "breakfast-menu":
            arrFood = Array()
            
        case "food" : food = Food()
            
        case "name" : foodName = String()
        
        case "price" : foodPrice = String()
            
        case "description" : foodDesc = String()
            
        case "calories" : calories = String()
            
        default: print("invalid element found !!")
            
        }
        
        
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        
        
        switch currentElement! {
        case "name" :
            foodName?.append(string)
            
        case "price" :
            foodPrice?.append(string)
            
        case "description" :
            foodDesc?.append(string)
            
        case "calories" :
            calories?.append(string)
            
        default: print("")
            
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        /*
        if elementName == "breakfast-menu" {
            for strData in arrFoods! {
                print(strData)
            }
        }
        if elementName == "name" {
            arrFoods?.append(data!)
        }
        */
        
        switch elementName {
        case "breakfast-menu": print()
            
        for foodData in arrFood! {
            print("food : \(foodData.name) , \(foodData.price) , \(foodData.descriptn) , \(foodData.calories)")
            }
            
            // need to print
            
        case "food" :
            food?.name = foodName
            food?.calories = calories
            food?.descriptn = foodDesc
            food?.price = foodPrice
            
            
            arrFood?.append(food!)
            
        default: print("invalid element found !!")
            
        }


    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

