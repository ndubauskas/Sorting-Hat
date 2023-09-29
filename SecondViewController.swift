//
//  SecondViewController.swift
//  Sorting Hat
//
//  Created by Nick Dubauskas on 5/10/23.
//

import UIKit

class SecondViewController: UIViewController {
    

 
    override func viewDidLoad() {
        super.viewDidLoad()
   //  firstPlaceImage.image = UIImage(named: "gImage")
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func unwindButton(_ sender: Any) {
        dismiss(animated: true,completion: nil)
        
    }
    
    
  
    @IBAction func getResultsBTN(_ sender: Any) {
        checkResults()
    }
    @IBOutlet weak var firstPlaceImage: UIImageView!
    
    @IBOutlet weak var secondPlaceImage: UIImageView!

    @IBOutlet weak var thirdPlaceImage: UIImageView!

    @IBOutlet weak var fourthPlaceImage: UIImageView!
   
  
    func showResults()
    {
        
      
        firstPlaceImage.image = UIImage(named: "sImage")
        secondPlaceImage.image = UIImage(named: "rImage")
        thirdPlaceImage.image = UIImage(named: "gImage")
        fourthPlaceImage.image = UIImage(named: "hImage")
    }
    
    
    func checkResults()
    {
       

        
        let griffHouse = housePoint(houseName: "gImage", totalPoints: userPoints[0])
        let ravHouse = housePoint(houseName: "rImage", totalPoints: userPoints[1])
        let huffHouse = housePoint(houseName: "hImage", totalPoints: userPoints[2])
        let slythHouse = housePoint(houseName: "sImage", totalPoints: userPoints[3])
        print("userpoints1:",userPoints[0])
        print("total points griff:",griffHouse.totalPoints)
        let objects = [griffHouse,ravHouse,huffHouse,slythHouse]
        print(objects[0])
        let sorting = objects.sorted{$0.totalPoints > $1.totalPoints}
        
        print("First place = ",sorting[0])
        print("Second place = ",sorting[1])
        print("Third place = ",sorting[2])
        print("Fourth place = ",sorting[3])
    
        
        showResults()
       
    }
    
    class housePoint{
        var houseName: String
        var totalPoints: Int
        
        init(houseName: String, totalPoints: Int){
            self.houseName = houseName
            self.totalPoints = totalPoints
        }
    }
     
   
}
   

