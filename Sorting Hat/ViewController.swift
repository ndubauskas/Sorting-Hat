//
//  ViewController.swift
//  Sorting Hat
//
//  Created by Nick Dubauskas on 3/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        let view = UIView(frame: self.view.bounds)
                
                if let backgroundImage = UIImage(named: "hp.jpeg") {
                    view.backgroundColor = UIColor(patternImage: backgroundImage)
                }
                
                self.view.addSubview(view)
        self.view.sendSubviewToBack(view)
        
        super.viewDidLoad()
        displayQuestion.translatesAutoresizingMaskIntoConstraints = false
        choice1Outlet.translatesAutoresizingMaskIntoConstraints = false
        choice2Outlet.translatesAutoresizingMaskIntoConstraints = false
        choice3Outlet.translatesAutoresizingMaskIntoConstraints = false
        choice4Outlet.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            displayQuestion.widthAnchor.constraint(equalToConstant: 340),
            displayQuestion.heightAnchor.constraint(equalToConstant: 150),
            choice1Outlet.widthAnchor.constraint(equalToConstant: 245),
            choice1Outlet.heightAnchor.constraint(equalToConstant: 130),
            choice2Outlet.widthAnchor.constraint(equalToConstant: 245),
            choice2Outlet.heightAnchor.constraint(equalToConstant: 130),
            choice3Outlet.widthAnchor.constraint(equalToConstant: 245),
            choice3Outlet.heightAnchor.constraint(equalToConstant: 130),
            choice4Outlet.widthAnchor.constraint(equalToConstant: 245),
            choice4Outlet.heightAnchor.constraint(equalToConstant: 130)
        ])
        
        displayQuestion.clipsToBounds = true
        choice1Outlet.clipsToBounds = true
        choice2Outlet.clipsToBounds = true
        choice3Outlet.clipsToBounds = true
        choice4Outlet.clipsToBounds = true
        displayQuestion.layer.borderWidth = 3.2
        displayQuestion.layer.borderColor = UIColor.systemTeal.cgColor
       
        
        choice1Outlet.layer.borderWidth = 3.2
        choice1Outlet.layer.borderColor = UIColor.systemTeal.cgColor
        choice2Outlet.layer.borderWidth = 3.2
        choice2Outlet.layer.borderColor = UIColor.systemTeal.cgColor
        choice3Outlet.layer.borderWidth = 3.2
        choice3Outlet.layer.borderColor = UIColor.systemTeal.cgColor
        choice4Outlet.layer.borderWidth = 3.2
        choice4Outlet.layer.borderColor = UIColor.systemTeal.cgColor
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
        choice3Outlet.isHidden = true
        choice4Outlet.isHidden = true
        
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
    
    @IBAction func retakeButtonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Warning!", message: "Do you want to restart?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Restart", style: .default, handler: {(action: UIAlertAction )in
            self.resetEverything()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: {(action: UIAlertAction )in

        }))
        present(alert,animated: true,completion: nil)
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
        choice3Outlet.isHidden = true
        choice4Outlet.isHidden = true
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
            choice3Outlet.isHidden = false
            choice4Outlet.isHidden = false
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
        let sorting = objects.sorted{$0.totalPoints > $1.totalPoints}
        

        if segue.identifier == "goToWinner" {
            if let destinationVC = segue.destination as? WinnerViewController {
           
                let imageName = sorting[0].houseName
                if let image = UIImage(named: imageName){
                    destinationVC.winnerImage = image
                    destinationVC.winnerColorString = sorting[0].houseColor
       
                    
                }else {
                    print(":(")
                }
                
            }
        }
        
    }

}
    




