//
//  ViewController.swift
//  Postcard
//
//  Created by Ibraheem Nadeem on 6/13/15.
//  Copyright (c) 2015 Ibraheem Nadeem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
    
        messageLabel.hidden = false
        
        //Makes the message enetered by the user appear in the label
        messageLabel.text = enterMessageTextField.text
        
        // Changing the color of the label
        
        messageLabel.textColor = UIColor.redColor()

    
        //Makes the message textfield blank again, removes the message typed by the user and sets it to an empty string.
        
        enterMessageTextField.text = ""
        
        //Code to hide keyboard after user types:
        
        enterMessageTextField.resignFirstResponder()
        
        //update  title of button
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    


}

