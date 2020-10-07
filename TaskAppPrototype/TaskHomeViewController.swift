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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateFirstTask()
        updateSecondTask()
        updateThirdTask()   
        
    }
    

    
    @IBAction func rerollFirstTaskButton(_ sender: UIButton) {
        //Rerolls first task
        updateFirstTask()
    }
    
    
    func updateFirstTask(){
        
        randomTask = Int(arc4random_uniform(UInt32(listOfTasks.count)))
        
        self.taskBoxOne.text = listOfTasks[randomTask]
    }
    
    
    
    
    @IBAction func rerollButtonTwoTapped(_ sender: UIButton) {
        //Rerolls second task
        updateSecondTask()
    }
    
    
    func updateSecondTask(){
        
        randomTask = Int(arc4random_uniform(UInt32(listOfTasks.count)))
        
        self.taskBoxTwo.text = listOfTasks[randomTask]
        
    }
    
    @IBAction func rerollButtonThreeTapped(_ sender: UIButton) {
        //Rerolls third task
        updateThirdTask()
    }
    
    func updateThirdTask(){
        
        randomTask = Int(arc4random_uniform(UInt32(listOfTasks.count)))
        
        self.taskBoxThree.text = listOfTasks[randomTask]
        
    }
    
}
