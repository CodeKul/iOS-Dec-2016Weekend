//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Varun on 15/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet var myCollectionView : UICollectionView!
    
    var arrData1 : Array<String>?
    var arrData2 : Array<String>?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrData1 = ["Red","Green","Blue","Black","White","Orange","Pink","Brown","Yellow"]
        
        arrData2 = ["87", "22", "93", "64", "63", "74", "82", "622"]
        
        myCollectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind:UICollectionElementKindSectionHeader, withReuseIdentifier: "myView")
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return (arrData1?.count)!
        }
        return (arrData2?.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch kind {
            
        case UICollectionElementKindSectionHeader:
            
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "myView", for: indexPath)
            
            headerView.backgroundColor = UIColor.blue;
            
            let headerLbl = UILabel(frame: CGRect(x: 0, y: 0, width: headerView.frame.size.width, height: headerView.frame.size.height))
            
            if indexPath.section == 0 {
                headerLbl.text = "Colors"
            }
            else {
                headerLbl.text = "Numbers"
            }
            
            headerLbl.textAlignment = .center
            headerLbl.textColor = UIColor.white
            
            headerView.addSubview(headerLbl)
            
            return headerView
            
        default:
            
            assert(false, "Unexpected element kind")
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell

        if indexPath.section == 0 {
            cell.myLbl.text = arrData1?[indexPath.row]
            cell.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        }
        else {
            cell.myLbl.text = arrData2?[indexPath.row]
            cell.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

