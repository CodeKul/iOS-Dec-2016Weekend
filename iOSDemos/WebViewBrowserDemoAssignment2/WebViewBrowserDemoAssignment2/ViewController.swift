//
//  ViewController.swift
//  WebViewBrowserDemoAssignment2
//
//  Created by Varun on 15/01/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIWebViewDelegate {

    @IBOutlet var wbView: UIWebView!
    @IBOutlet var txtUrl: UITextField!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        activityIndicator.stopAnimating()
    }
    func webViewDidStartLoad(_ webView: UIWebView) {
        activityIndicator.startAnimating()
    }
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        activityIndicator.stopAnimating()
    }
    @IBAction func loadUrl(_ sender: UIButton) {
        txtUrl.resignFirstResponder()
        
        let url = URL(string: txtUrl.text!)
        let req = URLRequest(url: url!)
        wbView.loadRequest(req)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

