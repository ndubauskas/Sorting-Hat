//
//  ViewController.swift
//  Sorting Hat
//
//  Created by Nick Dubauskas on 3/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayQuestion.text = question2C[0]
        choice1Outlet.setTitle(answer2C[0], for: .normal)
        choice2Outlet.setTitle(answer2C[1], for: .normal)
      
    }
    
   
    var userAnswer = ""
    // Array order is: Griff, Ravn, Huff, Slyth
    var userPoints = [0,0,0,0]
    

    @IBOutlet weak var displayQuestion: UILabel!
    
    @IBOutlet weak var choice1Outlet: UIButton!
    @IBAction func choice1Btn(_ sender: UIButton) {
        
        var choiceTitle = choice1Outlet.currentTitle!
        userAnswer = String(choiceTitle)
        userPoints = calcPoints(userAnswer: userAnswer)
        updateQuestion()
        print("Choice 1 selected")
        print("Griff points is:",userPoints[0])
        print("Rav points is:",userPoints[3])
        
        
    }
    
    @IBOutlet weak var choice2Outlet: UIButton!
    
    @IBAction func choice2Btn(_ sender: UIButton) {
        var choiceTitle = choice2Outlet.currentTitle!
        userAnswer = String(choiceTitle)
        userPoints = calcPoints(userAnswer: userAnswer)
        updateQuestion()
        print("Choice 2 selected")
        print("Griff points is:",userPoints[0])
    }
    
    @IBOutlet weak var choice3Outlet: UIButton!
    
    @IBAction func choice3Btn(_ sender: UIButton) {
        print("Griff points is:",userPoints[0])
        updateQuestion()

    }
    
    @IBOutlet weak var choice4Outlet: UIButton!
    
    @IBAction func choice4Btn(_ sender: UIButton) {
        updateQuestion()

    }
    
  
    func updateQuestion()
    {
        
       // displayQuestion.text = question2C[questionNum]
        //questionNum += 1
        
       // print("Question Number updated to:", questionNum)
        
    }
    
  
}


