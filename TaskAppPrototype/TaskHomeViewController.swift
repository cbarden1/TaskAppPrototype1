//
//  TaskHomeViewController.swift
//  TaskAppPrototype
//
//  Created by cyberdev on 10/1/20.
//  Copyright © 2020 Casi Barden. All rights reserved.
//

import UIKit

class taskHomeViewController: UIViewController {
    
    var randomTask : Int = 0
    
    
    let listOfTasks = ["Write 5 things you love about yourself", "Drink a cup of herbal tea", "Go for a long walk", "Send a message to someone you love", "Call someone you love", "Light your favorite candle", "Cook your favorite meal", "Hug someone", "Drink a full glass of water", "Tidy up one small space (desk, drawer, etc.)","Re-arrange a room in your home", "Get out into nature", "Send a surprise card or care package to someone", "Put the dishes away"]
    
    
    @IBOutlet weak var taskBoxOne: UILabel!
    
    @IBOutlet weak var taskBoxTwo: UILabel!
    
    @IBOutlet weak var taskBoxThree: UILabel!
    
    func generateRandomTask(){
        
        randomTask = Int(arc4random_uniform(UInt32(listOfTasks.count)))
        
    }
    
    func generateInitialTasks(){
        
        generateRandomTask()
        self.taskBoxOne.text = listOfTasks[randomTask]
        generateRandomTask()
        self.taskBoxTwo.text = listOfTasks[randomTask]
        
    }
    
    let defaults = UserDefaults.standard
    
    var achievementProgress:[String] = []
    
    func updateAchievementProgress() {
        
        self.achievementProgress.append("TP")
        
        defaults.set(achievementProgress, forKey: "SavedAchievementProgress")
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateInitialTasks()
        
        Timer.scheduledTimer(withTimeInterval: 86400, repeats: true) { timer in
            self.generateInitialTasks()
        }
        
        
        
        
    }

    
    @IBAction func rerollFirstTaskButton(_ sender: UIButton) {
        //Rerolls first task
        generateRandomTask()
        self.taskBoxOne.text = listOfTasks[randomTask]
    }
    
    @IBAction func rerollButtonTwoTapped(_ sender: UIButton) {
        //Rerolls second task
        generateRandomTask()
        self.taskBoxTwo.text = listOfTasks[randomTask]
    }
    
    @IBAction func rerollButtonThreeTapped(_ sender: UIButton) {
        //Rerolls third task
        generateRandomTask()
        self.taskBoxThree.text = listOfTasks[randomTask]
        
       // if self.taskBoxThree.text == taskBoxOne.text || self.taskBoxThree.text == taskBoxTwo.text {
         //   generateRandomTask()
           // self.taskBoxThree.text = listOfTasks[randomTask]
        
    }
    
    
    @IBAction func unwindFromCustomVC(_ sender: UIStoryboardSegue) {
        if sender.source is CustomTaskViewController {
            if let customVC = sender.source as? CustomTaskViewController {
                taskBoxThree.text = customVC.customTask
            }
        }
    }
    
    
    
    @IBAction func completeButtonOneTapped(_ sender: UIButton) {
        
        self.taskBoxOne.text = "Task Completed! Great Job!"
        
        updateAchievementProgress()
        
        (sender as UIButton).isEnabled = false
        
        Timer.scheduledTimer(withTimeInterval: 86400, repeats: true) { timer in  (sender as UIButton).isEnabled = true}
    }
    
    @IBAction func completeButtonTwoTapped(_ sender: UIButton) {
        
        self.taskBoxTwo.text = "Task Completed! Great Job!"
        
        updateAchievementProgress()
        
        (sender as UIButton).isEnabled = false
        
        Timer.scheduledTimer(withTimeInterval: 86400, repeats: true) { timer in  (sender as UIButton).isEnabled = true}
    }
    
    @IBAction func completeButtonThreeTapped(_ sender: UIButton) {
        
        self.taskBoxThree.text = "Task Completed! Great Job!"
        
        updateAchievementProgress()
        
        (sender as UIButton).isEnabled = false
        
        Timer.scheduledTimer(withTimeInterval: 3600, repeats: true) { timer in  (sender as UIButton).isEnabled = true}
    }
    
    
    
}

