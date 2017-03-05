//
//  ViewController.swift
//  SendSMS
//
//  Created by Codekul on 05/03/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController , MFMessageComposeViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        
        switch result.rawValue {
        case MessageComposeResult.cancelled.rawValue:
            print("cancelled")
            
        case MessageComposeResult.failed.rawValue:
            print("failed")

        case MessageComposeResult.sent.rawValue:
            print("sent")

        default:
            print("default")
        }
        
        controller.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func sendSMS(_ sender : UIButton){
        
        if(MFMessageComposeViewController .canSendText())
        {
        let messageVC = MFMessageComposeViewController()
        messageVC.recipients = []
        messageVC.body = "hello !! this is a test SMS"
        messageVC.messageComposeDelegate = self
        
        present(messageVC, animated: true, completion: nil)
        }
    }
    
}

