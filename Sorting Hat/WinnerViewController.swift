//
//  WinnerViewController.swift
//  Sorting Hat
//
//  Created by Nick Dubauskas on 9/29/23.
//

import UIKit

class WinnerViewController: UIViewController {
    var winnerImage: UIImage?
    var winnerColorString = ""
    var winnerColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navBar = navigationController?.navigationBar
        
        
    
        
        winner!.image = winnerImage
        let colorDictionary: [String: UIColor] = [
            "Red": .systemRed,
            "Blue": .systemBlue,
            "Yellow": .systemYellow,
            "Green": .systemGreen
        ]
        
        if let winnerColor = colorDictionary[winnerColorString] {
          
            navBar?.tintColor = colorDictionary[winnerColorString]
            let gradient: CAGradientLayer = CAGradientLayer()
            gradient.colors = [UIColor.white.cgColor, winnerColor.cgColor, UIColor.black.cgColor]
            gradient.locations = [0.0, 0.4, 1.0]
            gradient.startPoint = CGPoint(x: 0.5, y: 0.0)
            gradient.endPoint = CGPoint(x: 0.5, y: 1.0)
            gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)
            
            self.view.layer.insertSublayer(gradient, at: 0)
        } else {
            print("Invalid color name:")
        }
        
    }
    
    @IBOutlet weak var winner: UIImageView!

}

