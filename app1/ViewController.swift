//
//  ViewController.swift
//  app1
//
//  Created by Parimala Gollapudi on 10/28/14.
//  Copyright (c) 2014 Parimala Gollapudi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var itext: UITextField!
    
    @IBOutlet weak var otext: UILabel!

    @IBOutlet weak var sendButton: UIButton!
    
    
    @IBAction func changedtext(sender: AnyObject) {
        // test for commit
        if ( sender is UIButton)
        {
        
            if var x = itext.text.toInt()
        {
            x = x * 7
            otext.text = "\(x)"
            sendButton.setTitle ("Done" , forState:UIControlState.Normal)
            itext.resignFirstResponder()
            
        }
        else{
            otext.text = "please enter valid number"
        }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        itext.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

