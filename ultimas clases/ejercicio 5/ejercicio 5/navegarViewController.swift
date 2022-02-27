//
//  navegarViewController.swift
//  ejercicio 5
//
//  Created by idaira aleman quintana on 25/2/22.
//

import UIKit

class navegarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func navegar() {
        let volver = volverViewController(nibName: "volverViewController", bundle: nil)
        self.navigationController?.pushViewController(volver, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
