//
//  TaskHomeViewController.swift
//  TaskAppPrototype
//
//  Created by cyberdev on 10/1/20.
//  Copyright © 2020 Casi Barden. All rights reserved.
//

import UIKit
import CoreData

class taskHomeViewController: UIViewController {
    
    //let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
   // func fetchTaskOne() {
    //    context.fetch
   // }
    
    var randomTask : Int = 0
    
    let listOfTasks = ["Write 5 things you love about yourself", "Drink a cup of herbal tea", "Go for a long walk", "Send a message to someone you love", "Call someone you love", "Light your favorite candle", "Cook your favorite meal", "Hug someone", "Drink a full glass of water", "Tidy up one small space (desk, drawer, etc.)","Re-arrange a room in your home", "Get out into nature", "Send a surprise card or care package to someone", "Put the dishes away", "Make your bed", "Vacuum your room", "Do a bit of sweeping", "Organize your closet", "Organize your dresser", "Wash your pillows", "Water your plants", "Start a mini garden", "Get at 8 hours of sleep tonight", "Start a compliments file", "Do some cloud-watching", "Get at least 20 minutes of sun", "Don't check your phone for an hour", "Play a game for an hour", "Take three deep breaths", "Pick two healthy snacks for the day", "Take a quick nap to refresh", "Write out your thoughts", "Ask someone for help", "Take a long bath", "Write a haiku", "Get a massage", "Go to bed early tonight", "Go up and down the stairs three times", "Sleep in tomorrow morning", "Get dressed up, for yourself", "Try some yoga", "Watch a funny YouTube video", "Sing a song at the top of your lungs", "Order in dinner", "Bake something just for fun", "Create a piece of art", "Watch an episode of your favorite sitcom", "Look at the stars", "Create a playlist of your favorite songs", "Watch the sun rise", "Watch the sun set", "Spend some time with a friend today", "Send a care package to someone you love", "Reconnect with someone you've lost touch with", "Schedule a picnic", "Leave someone a funny voicemail", "Find a way to help someone today", "Take a break from social media for a few hours", "Do some volunteering"]
    
    
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
    
    var achievementProgress = 0
    
    
    func updateAchievementProgress() {
        //Used in "Complete!" buttons to store the number of times a task was completed to use on progress views in Achievements VC
        
        achievementProgress += 1
        
        defaults.set(achievementProgress, forKey: "SavedAchievementProgress")
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateInitialTasks()

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
    }
    
    
    @IBAction func unwindFromCustomVC(_ sender: UIStoryboardSegue) {
        if sender.source is CustomTaskViewController {
            if let customVC = sender.source as? CustomTaskViewController {
                taskBoxThree.text = customVC.customTask
            }
        }
    }
    
    
    @IBAction func completeButtonOneTapped(_ sender: UIButton) {
        //Updates label text field, increments achievementProgress value, sets Task to reroll after 12 hours, locks button for 12 hours
        
        self.taskBoxOne.text = "Task Complete! Great Job!"
        
        updateAchievementProgress()
        
        Timer.scheduledTimer(withTimeInterval: 43200, repeats: false) { timer in
            self.generateRandomTask()
            self.taskBoxOne.text = self.listOfTasks[self.randomTask]
        }

        
        (sender as UIButton).isEnabled = false
        Timer.scheduledTimer(withTimeInterval: 43200, repeats: true) { timer in  (sender as UIButton).isEnabled = true}
    }
    
    
    @IBAction func completeButtonTwoTapped(_ sender: UIButton) {
        //Updates label text field, increments achievementProgress value, sets Task to reroll after 12 hours, locks button for 12 hours
        
        self.taskBoxTwo.text = "Task Complete! Great Job!"
        
        updateAchievementProgress()
        
        Timer.scheduledTimer(withTimeInterval: 43200, repeats: false) { timer in
            self.generateRandomTask()
            self.taskBoxTwo.text = self.listOfTasks[self.randomTask]
        }
        
        (sender as UIButton).isEnabled = false
        Timer.scheduledTimer(withTimeInterval: 43200, repeats: true) { timer in  (sender as UIButton).isEnabled = true}
    }
    
    
    @IBAction func completeButtonThreeTapped(_ sender: UIButton) {
        //Updates label text field, increments achievementProgress value, sets Task to reroll after 12 hours, locks button for 12 hours
        
        self.taskBoxThree.text = "Task Complete! Great Job!"
        
        updateAchievementProgress()
        
        Timer.scheduledTimer(withTimeInterval: 43200, repeats: false) { timer in
            self.taskBoxThree.text = "Create your daily custom task using the top right button!"
        }

        
        (sender as UIButton).isEnabled = false
        Timer.scheduledTimer(withTimeInterval: 43200, repeats: true) { timer in  (sender as UIButton).isEnabled = true}
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

