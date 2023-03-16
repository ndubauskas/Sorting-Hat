//
//  Point Calc.swift
//  Sorting Hat
//
//  Created by Nick Dubauskas on 3/15/23.
//

import Foundation
//Total points for each house
var pointReturn = [0,0,0,0]

func calcPoints(userAnswer: String) -> [Int]
{
    
    if userAnswer.contains("Dawn")
    {
        pointReturn = [73,73,30,26]
       
     
    }
    else if userAnswer.contains("Dusk")
    {
        pointReturn = [27,27,70,74]
       
    }
    return pointReturn
}

