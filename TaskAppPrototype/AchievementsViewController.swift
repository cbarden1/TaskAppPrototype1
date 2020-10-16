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
    
    @IBOutlet weak var achievementOneLabel: UILabel!
    
    @IBOutlet weak var achievementTwoLabel: UILabel!
    
    @IBOutlet weak var achievementThreeLabel: UILabel!
    
    @IBAction func resetAchievementProgress(_ sender: UIButton) {
        
   //     achievementProgress = 0
        
    //    defaults.set(achievementProgress, forKey: "SavedAchievementProgress")
        
    //    achievementProgress = defaults.integer(forKey: "SavedAchievementProgress")
        
   //     trackAchievementOneProgress()
        
    //    trackAchievementTwoProgress()
        
    //    trackAchievementThreeProgress()
        
    //    self.view.setNeedsLayout()
        
    }
    
    
    
    let defaults = UserDefaults.standard
    
    var achievementProgress = 0
    
    
    func trackAchievementOneProgress() {
        
        if achievementProgress >= 1 { achievementProgressOne.setProgress(1.0, animated: true)
            
            self.achievementOneLabel.backgroundColor = UIColor.white
        }
        
    }
    
    func trackAchievementTwoProgress() {
            
            if achievementProgress == 1 { achievementProgressTwo.setProgress(0.20, animated: true)}
                
            else if achievementProgress == 2 { achievementProgressTwo.setProgress(0.40, animated: true)}
        
            else if achievementProgress == 3 { achievementProgressTwo.setProgress(0.60, animated: true)}
                
            else if achievementProgress == 4 { achievementProgressTwo.setProgress(0.80, animated: true)}
        
            else if achievementProgress >= 5 { achievementProgressTwo.setProgress(1.0, animated: true)
                
                self.achievementTwoLabel.backgroundColor = UIColor.white
                
        }
    }
    
    func trackAchievementThreeProgress() {
        
        if achievementProgress == 1 { achievementProgressThree.setProgress(0.10, animated: true)}
            
        else if achievementProgress == 2 { achievementProgressThree.setProgress(0.20, animated: true)}
            
        else if achievementProgress == 3 { achievementProgressThree.setProgress(0.30, animated: true)}
            
        else if achievementProgress == 4 { achievementProgressThree.setProgress(0.40, animated: true)}
            
        else if achievementProgress == 5 { achievementProgressThree.setProgress(0.50, animated: true)}
        
        else if achievementProgress == 6 { achievementProgressThree.setProgress(0.60, animated: true) }
            
        else if achievementProgress == 7 { achievementProgressThree.setProgress(0.70, animated: true)}
            
        else if achievementProgress == 8 { achievementProgressThree.setProgress(0.80, animated: true)}
            
        else if achievementProgress == 9 { achievementProgressThree.setProgress(0.90, animated: true)}
            
        else if achievementProgress >= 10 { achievementProgressThree.setProgress(1.0, animated: true)
            
            self.achievementThreeLabel.backgroundColor = UIColor.white
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        achievementProgress = defaults.integer(forKey: "SavedAchievementProgress")
        
        trackAchievementOneProgress()
        
        trackAchievementTwoProgress()
        
        trackAchievementThreeProgress()
        
        
        achievementProgressOne.transform = achievementProgressOne.transform.scaledBy(x:1, y:3)
        
        achievementProgressTwo.transform = achievementProgressTwo.transform.scaledBy(x:1, y:3)
        
        achievementProgressThree.transform = achievementProgressThree.transform.scaledBy(x:1, y:3)
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
