//
//  Loan.swift
//  JsonParsingDemo
//
//  Created by Codekul on 26/02/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class Loan: NSObject {

    var id : Int?
    var name : String?
    var desc : [String : [String]]?
    var status : String?
    var fundedAmount : Int?
    var basketAmount : Int?
    var image : [String : Int]?
    var activity : String?
    var sector : String?
    var themese : [String]?
    var use : String?
    var location : [String : Any]?
    var partnerId : Int?
    var postedDate : String?
    var plannedExpDate :String?
    var loanAmount : Int?
    var borrowerCount : Int?
    var lenderCount : Int?
    var bonusCreditE : Bool?
    var tags : [[String: String]]?
    
    
    /*
     
     "location": {
     "country_code": "ZA",
     "country": "South Africa",
     "town": "Upington",
     "geo": {
					"level": "town",
					"pairs": "-30 26",
					"type": "point"
     }
     },
     "partner_id": 445,
     "posted_date": "2017-02-26T05:50:04Z",
     "planned_expiration_date": "2017-03-28T04:50:04Z",
     "loan_amount": 2300,
     "borrower_count": 1,
     "lender_count": 0,
     "bonus_credit_eligibility": false,
     "tags": [
     {
					"name": "user_favorite"
     }
     ]
 */
    
    
}
