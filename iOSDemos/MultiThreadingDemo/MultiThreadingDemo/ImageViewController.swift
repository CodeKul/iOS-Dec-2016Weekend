//
//  ImageViewController.swift
//  MultiThreadingDemo
//
//  Created by Codekul on 05/03/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var imageView : UIImageView!
    @IBOutlet var loader : UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loader.startAnimating()
        
        let myQueue = DispatchQueue(label: "myQueue")
        
        myQueue.async {
//        DispatchQueue.global().async { 
            let imgData = try? Data(contentsOf: URL(string: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2014/09/09/10/Apple-iPhone.jpg")!)
            
            let image = UIImage(data: imgData!)
            
            DispatchQueue.main.async {
                self.imageView.image = image
                self.loader.stopAnimating()
            }
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
