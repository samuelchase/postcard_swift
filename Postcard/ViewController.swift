//
//  ViewController.swift
//  Postcard
//
//  Created by Jason Crilly on 9/22/14.
//  Copyright (c) 2014 Sam Chase. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
    
        // what up biatch?
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        sendButton.setTitle("SENT!", forState: UIControlState.Normal)
    }

}

