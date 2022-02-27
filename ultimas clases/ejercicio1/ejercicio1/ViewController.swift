//
//  ViewController.swift
//  ejercicio1
//
//  Created by idaira aleman quintana on 21/2/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet var name:UILabel!
    @IBAction func button() {
        name.text = "adios"
        
    }
    
}

