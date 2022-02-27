//
//  ViewController.swift
//  ejercicio 5
//
//  Created by idaira aleman quintana on 23/2/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var myView:UIView!
    @IBOutlet var myHorizontalLable:UILabel!
    @IBOutlet var myVerticalLabel:UILabel!
    @IBOutlet var myAlphaLabel:UILabel!
    @IBOutlet var myHorizontalSlider:UISlider!
    @IBOutlet var myVerticalSlider:UISlider!
    @IBOutlet var myAlphaSlider:UISlider!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func horizontalSlider(_ sender: UISlider) {
        self.myView.frame.origin.x = CGFloat(sender.value)
        
    }
    @IBAction func verticalSlider(_ sender: UISlider) {
        self.myView.frame.origin.y = CGFloat(sender.value)
     
    }
    @IBAction func alphaSlider(_ sender: UISlider) {
        self.myView.alpha = CGFloat(sender.value)
    }
    
    
    
}

