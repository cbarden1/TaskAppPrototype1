//
//  CustomTaskViewController.swift
//  TaskAppPrototype
//
//  Created by cyberdev on 10/6/20.
//  Copyright © 2020 Casi Barden. All rights reserved.
//

import UIKit


class CustomTaskViewController: UIViewController {
    
    
    @IBOutlet weak var customTaskTextField: UITextField!
    
    var customTask: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let newCustomTask = customTaskTextField.text {
            customTask = newCustomTask
        }
    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
