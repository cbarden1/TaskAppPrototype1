//
//  CustomTaskViewController.swift
//  TaskAppPrototype
//
//  Created by cyberdev on 10/6/20.
//  Copyright © 2020 Casi Barden. All rights reserved.
//

import UIKit


class CustomTaskViewController: UIViewController {
    
    
    
    @IBOutlet weak var customFirstTaskTextField: UITextField!
    

    var customTask: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let newCustomTask = customFirstTaskTextField.text {
            customTask = newCustomTask
        }
    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
