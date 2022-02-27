//
//  ViewController.swift
//  login
//
//  Created by idaira aleman quintana on 22/2/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mylogo : UIImageView!
    @IBOutlet var myUser : UITextField!
    @IBOutlet var myPassword : UITextField!
    @IBOutlet var myLabelState : UILabel!
    @IBOutlet var myLoginButton : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        myUser.placeholder =
        "User name"
        myPassword.placeholder = "password"
        myPassword.isSecureTextEntry = true
        myLabelState.text = "Estado del login"
    }
   
    @IBAction func myLoginButton(_ sender: Any) {
     
    }
    
}

