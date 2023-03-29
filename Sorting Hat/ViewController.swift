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
        choice3Outlet.setTitle(" ", for: .normal)
        choice4Outlet.setTitle(" ", for: .normal)
        questionNum2C = 0
        answerNum2C = 0
        questionLabelNum = 1
        questionNumberOutlet.text = "1"
        answerNum4C = 0
        lastQuestion = false
        
    }
    
   var lastQuestion = false
    var userAnswer = ""
    var resultString = ["","", "",""]
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
       else if(questionLabelNum < 25 && questionLabelNum > 6)
        {
            questionNum4C += 1
            questionLabelNum += 1
            
            displayQuestion.text = questionBank[questionLabelNum - 1]
            questionNumberOutlet.text = String(questionLabelNum)
       }
        else if(lastQuestion == true)
        {
            showResults()
        }
            
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
        
        else if (questionLabelNum - 1 < 25)
        {
            
            if(answerNum4C + 4 == 76)
            {
                getLastQuestion()
            }
            // do 4 choice answers
           // print(answer4C[answerNum4C])
            //print(answer4C[answerNum4C+1])
            else{
                choice1Outlet.setTitle(answer4C[answerNum4C], for: .normal)
                choice2Outlet.setTitle(answer4C[answerNum4C + 1], for: .normal)
                choice3Outlet.setTitle(answer4C[answerNum4C + 2], for: .normal)
                choice4Outlet.setTitle(answer4C[answerNum4C + 3], for: .normal)
                answerNum4C += 4
                
            }
        }
        
    }
    
    func getLastQuestion()
    {
        
        if(lastQuestion == false)
        {
            choice1Outlet.setTitle(answer4C[answerNum4C], for: .normal)
            choice2Outlet.setTitle(answer4C[answerNum4C + 1], for: .normal)
            choice3Outlet.setTitle(answer4C[answerNum4C + 2], for: .normal)
            choice4Outlet.setTitle(answer4C[answerNum4C + 3], for: .normal)
            print("@last question")
            //showResults()
            lastQuestion = true
            
        }
        
    }
    func showResults()
    {
        if(lastQuestion == true)
        {
            resultString[0] = String(userPoints[0])
            resultString[1] = String(userPoints[1])
            resultString[2] = String(userPoints[2])
            resultString[3] = String(userPoints[3])
            choice1Outlet.setTitle(resultString[0], for: .normal)
            choice2Outlet.setTitle(resultString[1], for: .normal)
            choice3Outlet.setTitle(resultString[2], for: .normal)
            choice4Outlet.setTitle(resultString[3], for: .normal)
            displayQuestion.text = "Results!!"
            //print("in show results")
        }
        
    }
    @IBAction func resetButton(_ sender: Any) {
        
        //print("userpoints grff before reset",userPoints[0])
        answerNum2C = 0
        answerNum4C = 0
        questionNum2C = 0
        userPoints = resetPoints()
        questionLabelNum = 1
        questionNumberOutlet.text = "1"
        lastQuestion = false
        displayQuestion.text = questionBank[0]
        choice1Outlet.setTitle(answer2C[0], for: .normal)
        choice2Outlet.setTitle(answer2C[1], for: .normal)
        choice3Outlet.setTitle(" ", for: .normal)
        choice4Outlet.setTitle(" ", for: .normal)
        
    }
 
    func pointPrintTest()
    {
        print("Griff points is:",userPoints[0])
        print("Rav points is:", userPoints[1])
        print("Huff points is: ", userPoints[2])
        print("Slyth points is:",userPoints[3])
        print("|----------------------------|")
    }
}


