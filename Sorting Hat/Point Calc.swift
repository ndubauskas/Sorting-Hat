//
//  Point Calc.swift
//  Sorting Hat
//
//  Created by Nick Dubauskas on 3/15/23.
//

import Foundation
//Total points for each house
var pointReturn = [0,0,0,0]
let pointReset = [0,0,0,0]

func resetPoints() -> [Int]
{
    return pointReset
}
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
        
        pointReturn[0] += 14
        pointReturn[1] += 18
        pointReturn[2] += 46
        pointReturn[3] += 18
        
    }
    
    else if userAnswer.contains("gleaming jet black box")
    {
     
        pointReturn[0] += 18
        pointReturn[1] += 20
        pointReturn[2] += 16
        pointReturn[3] += 46
    }
    
    else if userAnswer.contains("ornate golden casket")
    {
       
        pointReturn[0] += 19
        pointReturn[1] += 44
        pointReturn[2] += 21
        pointReturn[3] += 19
        
    }
    
    else if userAnswer.contains("Attempt to confuse")
    {
      
        pointReturn[0] += 49
        pointReturn[1] += 19
        pointReturn[2] += 17
        pointReturn[3] += 17
        
    }
   
    else if userAnswer.contains("small pewter box")
    {
      
        pointReturn[0] += 49
        pointReturn[1] += 19
        pointReturn[2] += 17
        pointReturn[3] += 17
        
    } else if userAnswer.contains("small pewter box")
    {
      
        pointReturn[0] += 49
        pointReturn[1] += 19
        pointReturn[2] += 17
        pointReturn[3] += 17
        
    } else if userAnswer.contains("small pewter box")
    {
      
        pointReturn[0] += 49
        pointReturn[1] += 19
        pointReturn[2] += 17
        pointReturn[3] += 17
        
    } else if userAnswer.contains("small pewter box")
    {
      
        pointReturn[0] += 49
        pointReturn[1] += 19
        pointReturn[2] += 17
        pointReturn[3] += 17
        
    }
    return pointReturn
}

