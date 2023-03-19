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
        displayQuestion.text = questionBank[0]
        choice1Outlet.setTitle(answer2C[0], for: .normal)
        choice2Outlet.setTitle(answer2C[1], for: .normal)
        questionNum2C = 0
        answerNum2C = 0
        questionLabelNum = 1
        questionNumberOutlet.text = "1"
        answerNum4C = 0
        
    }
    
   
    var userAnswer = ""
    // Array order is: Griff, Ravn, Huff, Slyth
    var userPoints = [0,0,0,0]
    
    @IBOutlet weak var questionNumberOutlet: UILabel!
    
    @IBOutlet weak var displayQuestion: UILabel!
    
    @IBOutlet weak var choice1Outlet: UIButton!
    @IBAction func choice1Btn(_ sender: UIButton) {
        
        let choiceTitle = choice1Outlet.currentTitle!
        userAnswer = String(choiceTitle)
        userPoints = calcPoints(userAnswer: userAnswer)
        updateQuestion()
        updateAnswers()
       
        
        //pointPrintTest()
    }
    
    @IBOutlet weak var choice2Outlet: UIButton!
    
    @IBAction func choice2Btn(_ sender: UIButton) {
        let choiceTitle = choice2Outlet.currentTitle!
        userAnswer = String(choiceTitle)
        userPoints = calcPoints(userAnswer: userAnswer)
        updateQuestion()
        updateAnswers()
      
        //pointPrintTest()

    }
    
    @IBOutlet weak var choice3Outlet: UIButton!
    
    @IBAction func choice3Btn(_ sender: UIButton) {
        let choiceTitle = choice3Outlet.currentTitle!
        userAnswer = String(choiceTitle)
        userPoints = calcPoints(userAnswer: userAnswer)
        updateQuestion()
        updateAnswers()
        
        
        //pointPrintTest()
        
    }
    
    @IBOutlet weak var choice4Outlet: UIButton!
    
    @IBAction func choice4Btn(_ sender: UIButton) {
        let choiceTitle = choice4Outlet.currentTitle!
        userAnswer = String(choiceTitle)
        userPoints = calcPoints(userAnswer: userAnswer)
        updateQuestion()
        updateAnswers()

        //pointPrintTest()
    }
    
  
    func updateQuestion()
    {
        
        if(questionNum2C != 6)
        {
            questionNum2C += 1
            questionLabelNum += 1
            
            displayQuestion.text = questionBank[questionLabelNum - 1]
            questionNumberOutlet.text = String(questionLabelNum)
        }
        else
        {
            questionNum4C += 1
            questionLabelNum += 1
            
            displayQuestion.text = questionBank[questionLabelNum - 1]
            questionNumberOutlet.text = String(questionLabelNum)
        }
            
       // print("Question Number updated to:", questionNum)
        
    }
    
    func updateAnswers()
    
    {
        
        if(questionNum2C != 6){
            answerNum2C += 2
            
            choice1Outlet.setTitle(answer2C[answerNum2C], for: .normal)
            choice2Outlet.setTitle(answer2C[answerNum2C + 1], for: .normal)
               // print("inside 2c!!!")
            //print("Question Num 2C is = ",questionNum2C)
        }
        
        else
        {
            // do 4 choice answers
            //print("Question = ",questionNum2C)
            //print("Inside the else!!!")
            //print(answer4C[answerNum4C])
            //print(answer4C[answerNum4C+1])
            choice1Outlet.setTitle(answer4C[answerNum4C], for: .normal)
            choice2Outlet.setTitle(answer4C[answerNum4C + 1], for: .normal)
            choice3Outlet.setTitle(answer4C[answerNum4C + 2], for: .normal)
            choice4Outlet.setTitle(answer4C[answerNum4C + 3], for: .normal)
            
            answerNum4C += 4
        }
        
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        
        //print("userpoints grff before reset",userPoints[0])
        answerNum2C = 0
        answerNum4C = 0
        questionNum2C = 0
        /*
        userPoints[0] = 0
        userPoints[1] = 0
        userPoints[2] = 0
        userPoints[3] = 0
         */
        userPoints = resetPoints()
        questionLabelNum = 1
        questionNumberOutlet.text = "1"
        displayQuestion.text = questionBank[0]
        choice1Outlet.setTitle(answer2C[0], for: .normal)
        choice2Outlet.setTitle(answer2C[1], for: .normal)
        
        
    }
 
    func pointPrintTest()
    {
        print("Griff points is:",userPoints[0])
        print("Rav points is:", userPoints[1])
        print("Huff points is: ", userPoints[2])
        print("Slyth points is:",userPoints[3])
        print("||||||||")
    }
}


