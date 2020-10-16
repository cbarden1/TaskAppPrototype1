//
//  AchievementsViewController.swift
//  TaskAppPrototype
//
//  Created by cyberdev on 10/7/20.
//  Copyright © 2020 Casi Barden. All rights reserved.
//

import UIKit

class AchievementsViewController: UIViewController {

    @IBOutlet weak var achievementProgressOne: UIProgressView!
    
    
    @IBOutlet weak var achievementProgressTwo: UIProgressView!
    
    
    @IBOutlet weak var achievementProgressThree: UIProgressView!



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        achievementProgressOne.transform = achievementProgressOne.transform.scaledBy(x:1, y:3)
        
        achievementProgressTwo.transform = achievementProgressTwo.transform.scaledBy(x:1, y:3)
        
        achievementProgressThree.transform = achievementProgressThree.transform.scaledBy(x:1, y:3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
