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
        
        initiliazeVariables()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        resetEverything()
    }
    func initiliazeVariables()
    {
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
    // Array order is: Griff, Ravn, Huff, Slyth
    
    
    @IBOutlet weak var questionNumberOutlet: UILabel!
    
    @IBOutlet weak var displayQuestion: UILabel!
    
    @IBOutlet weak var choice1Outlet: UIButton!
    @IBAction func choice1Btn(_ sender: UIButton) {
        
        let choiceTitle = choice1Outlet.currentTitle!
        userAnswer = String(choiceTitle)
        userPoints = calcPoints(userAnswer: userAnswer)
        updateQuestion()
        updateAnswers()
        
    }
    
    @IBOutlet weak var choice2Outlet: UIButton!
    
    @IBAction func choice2Btn(_ sender: UIButton) {
        let choiceTitle = choice2Outlet.currentTitle!
        userAnswer = String(choiceTitle)
        userPoints = calcPoints(userAnswer: userAnswer)
        updateQuestion()
        updateAnswers()
        
    }
    
    @IBOutlet weak var choice3Outlet: UIButton!
    
    @IBAction func choice3Btn(_ sender: UIButton) {
        let choiceTitle = choice3Outlet.currentTitle!
        userAnswer = String(choiceTitle)
        userPoints = calcPoints(userAnswer: userAnswer)
        updateQuestion()
        updateAnswers()
        
        
    }
    
    @IBOutlet weak var choice4Outlet: UIButton!
    
    @IBAction func choice4Btn(_ sender: UIButton) {
        let choiceTitle = choice4Outlet.currentTitle!
        userAnswer = String(choiceTitle)
        userPoints = calcPoints(userAnswer: userAnswer)
        updateQuestion()
        updateAnswers()
        
    }
    
    
    @IBAction func retakeButton(_ sender: UIButton) {
        print("reset button")
        
        resetEverything()
    }
    func resetEverything()
    {
        userPoints = resetPoints()
        answerNum2C = 0
        answerNum4C = 0
        questionNum2C = 0
        questionLabelNum = 1
        questionNumberOutlet.text = "1"
        lastQuestion = false
        displayQuestion.text = questionBank[0]
        choice1Outlet.setTitle(answer2C[0], for: .normal)
        choice2Outlet.setTitle(answer2C[1], for: .normal)
        choice3Outlet.setTitle(" ", for: .normal)
        choice4Outlet.setTitle(" ", for: .normal)
        pointReturn[0] = 0
        pointReturn[1] = 0
        pointReturn[2] = 0
        pointReturn[3] = 0
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
            
        }
        
        else if (questionLabelNum - 1 < 25)
        {
            
            if(answerNum4C + 4 == 76)
            {
                getLastQuestion()
            }
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
            showResults()
            lastQuestion = true
            
        }
        
    }
    func showResults()
    {
        if(lastQuestion == true)
        {
            
            
            performSegue(withIdentifier: "goToWinner", sender: self)
            
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let griffHouse = housePoint(houseName: "gImage", totalPoints: userPoints[0], houseColor: "Red")
        let ravHouse = housePoint(houseName: "rImage", totalPoints: userPoints[1], houseColor: "Blue")
        let huffHouse = housePoint(houseName: "hImage", totalPoints: userPoints[2], houseColor: "Yellow")
        let slythHouse = housePoint(houseName: "sImage", totalPoints: userPoints[3], houseColor: "Green")
        
        let objects = [griffHouse,ravHouse,huffHouse,slythHouse]
       //print(objects[0])
        let sorting = objects.sorted{$0.totalPoints > $1.totalPoints}
        
//        print("First place = ",sorting[0].totalPoints)
//        print("House name = ",sorting[0].houseName)
//
        if segue.identifier == "goToWinner" {
            if let destinationVC = segue.destination as? WinnerViewController {
           
                let imageName = sorting[0].houseName
                if let image = UIImage(named: imageName){
                    destinationVC.winnerImage = image
                    destinationVC.winnerColorString = sorting[0].houseColor
//                    if let houseColor = sorting[0].houseColor {
//                        destinationVC.winnerColorString = houseColor
//                              } else {
//                                  print("Invalid color name: \(sorting[0].houseColor)")
//                              }

                    
                }else {
                    print(":(")
                }
                
            }
        }
        
    }

    
    
    
}
    




