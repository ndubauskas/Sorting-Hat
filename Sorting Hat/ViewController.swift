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
        
    }
    
    
  
    
    @IBOutlet weak var displayQuestion: UILabel!
    @IBOutlet weak var choice1Outlet: UIButton!
    @IBAction func choice1Btn(_ sender: UIButton) {
        updateQuestion()
    }
    
    @IBOutlet weak var choice2Outlet: UIButton!
    
    @IBAction func choice2Btn(_ sender: Any) {
        updateQuestion()

    }
    
    @IBOutlet weak var choice3Outlet: UIButton!
    
    @IBAction func choice3Btn(_ sender: UIButton) {
        updateQuestion()

    }
    
    @IBOutlet weak var choice4Outlet: UIButton!
    
    @IBAction func choice4Btn(_ sender: UIButton) {
        updateQuestion()

    }
    
    var questionCounter = 1

    func updateQuestion()
    {
        //Need sender input from button to change the choice number
        choice1Outlet.setTitle(question1.questionPrompt, for: .normal)
        questionCounter += 1
        
        displayQuestion.text = question1.questionPrompt
        
        
    }

}

