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
        pointReturn[0] += 73
        pointReturn[1] += 73
        pointReturn[2] += 30
        pointReturn[3] += 26
     
    }
    else if userAnswer.contains("Dusk")
    {
        pointReturn[0] += 27
        pointReturn[1] += 27
        pointReturn[2] += 70
        pointReturn[3] += 74
    }
    
    else if userAnswer.contains("Forest")
    {        
        pointReturn[0] += 74
        pointReturn[1] += 73
        pointReturn[2] += 26
        pointReturn[3] += 28
    }
    
    else if userAnswer.contains("River")
    {
        pointReturn[0] += 26
        pointReturn[1] += 27
        pointReturn[2] += 74
        pointReturn[3] += 72
        
    }
    
    else if userAnswer.contains("Moon")
    {
        pointReturn[0] += 27
        pointReturn[1] += 74
        pointReturn[2] += 33
        pointReturn[3] += 72
        
    }
    else if userAnswer.contains("Stars")
    {
        pointReturn[0] += 73
        pointReturn[1] += 26
        pointReturn[2] += 67
        pointReturn[3] += 28
        
    }
    
    else if userAnswer.contains("Black")
    {
        pointReturn[0] += 73
        pointReturn[1] += 29
        pointReturn[2] += 24
        pointReturn[3] += 72
        
    }
    else if userAnswer.contains("White")
    {
        pointReturn[0] += 27
        pointReturn[1] += 71
        pointReturn[2] += 76
        pointReturn[3] += 28
        
    }
    
    else if userAnswer.contains("Heads")
    {
        pointReturn[0] += 27
        pointReturn[1] += 69
        pointReturn[2] += 74
        pointReturn[3] += 27
        
    }
    
    else if userAnswer.contains("Tails")
    {
        pointReturn[0] += 29
        pointReturn[1] += 70
        pointReturn[2] += 29
        pointReturn[3] += 73
        
    }
    else if userAnswer.contains("small tortoiseshell box")
    {
        print("tort!!")
        
    }
    
    else if userAnswer.contains("gleaming jet black box")
    {
        print("black!!")
    }
    
    else if userAnswer.contains("ornate golden casket")
    {
        print("gold!!")
        
    }
    
    else if userAnswer.contains("small pewter box")
    {
        print("small!!")
        
    }
    return pointReturn
}

