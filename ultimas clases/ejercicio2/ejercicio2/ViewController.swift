//
//  ViewController.swift
//  ejercicio2
//
//  Created by idaira aleman quintana on 21/2/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var name:UILabel!
    @IBOutlet var mySegmentedController:UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myChangeColor(_ sender: UISegmentedControl) {
        name.textColor = .red
        mySegmentedController.selectedSegmentTintColor = .red
        if mySegmentedController.selectedSegmentIndex == 1 {
            name.textColor = .blue
            mySegmentedController.selectedSegmentTintColor = .blue
            
            
        }
    }
    
}

