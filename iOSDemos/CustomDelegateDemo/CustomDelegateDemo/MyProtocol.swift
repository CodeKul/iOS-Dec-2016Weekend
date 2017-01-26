//
//  MyProtocol.swift
//  CustomDelegateDemo
//
//  Created by Varun on 26/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

@objc protocol MyProtocol {
    
    @objc optional func printColorName()
    func changeBacgroundColor(color : UIColor)
}
