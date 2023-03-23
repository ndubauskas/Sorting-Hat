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
      
        pointReturn[0] += 20
        pointReturn[1] += 44
        pointReturn[2] += 18
        pointReturn[3] += 23
        
    }
   
    else if userAnswer.contains("Suggest drawing")
    {
      
        pointReturn[0] += 16
        pointReturn[1] += 17
        pointReturn[2] += 47
        pointReturn[3] += 17
        
    } else if userAnswer.contains("Suggest that all three of you should fight")
    {
      
        pointReturn[0] += 18
        pointReturn[1] += 19
        pointReturn[2] += 16
        pointReturn[3] += 42
        
    } else if userAnswer.contains("Volunteer to fight")
    {
      
        pointReturn[0] += 46
        pointReturn[1] += 19
        pointReturn[2] += 19
        pointReturn[3] += 18
        
    } else if userAnswer.contains("A crackling log fire")
    {
      
        pointReturn[0] += 44
        pointReturn[1] += 17
        pointReturn[2] += 16
        pointReturn[3] += 21
        
    }
    else if userAnswer.contains("The sea")
    {
      
        pointReturn[0] += 21
        pointReturn[1] += 22
        pointReturn[2] += 18
        pointReturn[3] += 46
        
    }
    else if userAnswer.contains("Fresh parchment")
    {
      
        pointReturn[0] += 16
        pointReturn[1] += 45
        pointReturn[2] += 22
        pointReturn[3] += 15
        
    }
    else if (userAnswer == "Home")
    {
      
        pointReturn[0] += 19
        pointReturn[1] += 15
        pointReturn[2] += 43
        pointReturn[3] += 18
    }
    else if userAnswer.contains("Lie and say you don’t know")
    {
      
        pointReturn[0] += 17
        pointReturn[1] += 14
        pointReturn[2] += 43
        pointReturn[3] += 18
        
    }
    else if userAnswer.contains("Tell Professor Flitwick that he ought to ask your classmate")
    {
      
        pointReturn[0] += 43
        pointReturn[1] += 16
        pointReturn[2] += 22
        pointReturn[3] += 14
        
    }
    else if userAnswer.contains("Tell Professor Flitwick the truth")
    {
      
        pointReturn[0] += 22
        pointReturn[1] += 45
        pointReturn[2] += 16
        pointReturn[3] += 19
        
    }
    else if userAnswer.contains("You would not wait to be asked to tell")
    {
      
        pointReturn[0] += 18
        pointReturn[1] += 25
        pointReturn[2] += 19
        pointReturn[3] += 49
        
    }
    else if (userAnswer == "Hunger")
    {
      
        pointReturn[0] += 10
        pointReturn[1] += 29
        pointReturn[2] += 28
        pointReturn[3] += 10
        
    }
    else if (userAnswer == "Loneliness")
    {
      
        pointReturn[0] += 32
        pointReturn[1] += 13
        pointReturn[2] += 24
        pointReturn[3] += 9
        
    }
    else if (userAnswer == "Boredom")
    {
      
        pointReturn[0] += 32
        pointReturn[1] += 13
        pointReturn[2] += 10
        pointReturn[3] += 28
        
    }
    else if userAnswer.contains("Being ignored")
    {
      
        pointReturn[0] += 11
        pointReturn[1] += 32
        pointReturn[2] += 12
        pointReturn[3] += 27
        
    }
    else if userAnswer.contains("The silver leafed")
    {
      
        pointReturn[0] += 17
        pointReturn[1] += 45
        pointReturn[2] += 18
        pointReturn[3] += 16
        
    }
    else if userAnswer.contains("The fat red toadstools")
    {
      
        pointReturn[0] += 18
        pointReturn[1] += 15
        pointReturn[2] += 42
        pointReturn[3] += 17
        
    }
    else if userAnswer.contains("The bubbling pool, in the depths")
    {
      
        pointReturn[0] += 16
        pointReturn[1] += 11
        pointReturn[2] += 21
        pointReturn[3] += 46
        
    }
    else if userAnswer.contains("The statue of an old wizard")
    {
      
        pointReturn[0] += 49
        pointReturn[1] += 18
        pointReturn[2] += 19
        pointReturn[3] += 21
        
    }
    else if userAnswer.contains("The foaming, frothing, silvery liquid")
    {
      
        pointReturn[0] += 21
        pointReturn[1] += 44
        pointReturn[2] += 19
        pointReturn[3] += 18
        
    }
    else if userAnswer.contains("The smooth, thick, richly purple")
    {
      
        pointReturn[0] += 19
        pointReturn[1] += 19
        pointReturn[2] += 43
        pointReturn[3] += 20
        
    }
    else if userAnswer.contains("The golden liquid so bright that it hurts")
    {
      
        pointReturn[0] += 41
        pointReturn[1] += 18
        pointReturn[2] += 19
        pointReturn[3] += 19
        
    }
    else if userAnswer.contains("The mysterious black liquid that gleams like ink")
    {
      
        pointReturn[0] += 18
        pointReturn[1] += 19
        pointReturn[2] += 19
        pointReturn[3] += 43
        
    }
    else if userAnswer.contains("The violin")
    {
      
        pointReturn[0] += 17
        pointReturn[1] += 20
        pointReturn[2] += 20
        pointReturn[3] += 48
        
    }
    else if userAnswer.contains("The trumpet")
    {
      
        pointReturn[0] += 18
        pointReturn[1] += 17
        pointReturn[2] += 44
        pointReturn[3] += 18
        
    }
    else if userAnswer.contains("The piano")
    {
      
        pointReturn[0] += 21
        pointReturn[1] += 46
        pointReturn[2] += 19
        pointReturn[3] += 18
        
    }
    else if userAnswer.contains("The drum")
    {
      
        pointReturn[0] += 44
        pointReturn[1] += 17
        pointReturn[2] += 17
        pointReturn[3] += 16
        
    }
    else if (userAnswer == "Ordinary")
    {
      
        pointReturn[0] += 17
        pointReturn[1] += 18
        pointReturn[2] += 19
        pointReturn[3] += 45
        
    }
    else if (userAnswer == "Ignorant")
    {
      
        pointReturn[0] += 19
        pointReturn[1] += 50
        pointReturn[2] += 19
        pointReturn[3] += 17
        
    }
    else if (userAnswer == "Cowardly")
    {
      
        pointReturn[0] += 47
        pointReturn[1] += 17
        pointReturn[2] += 18
        pointReturn[3] += 20
        
    }
    else if (userAnswer == "Selfish")
    {
      
        pointReturn[0] += 17
        pointReturn[1] += 15
        pointReturn[2] += 44
        pointReturn[3] += 18
        
    }
    else if userAnswer.contains("Miss you,")
    {
      
        pointReturn[0] += 18
        pointReturn[1] += 16
        pointReturn[2] += 42
        pointReturn[3] += 19
        
    }
    else if userAnswer.contains("Ask for more stories")
    {
      
        pointReturn[0] += 46
        pointReturn[1] += 19
        pointReturn[2] += 14
        pointReturn[3] += 19
        
    }
    else if userAnswer.contains("Think with admiration")
    {
      
        pointReturn[0] += 18
        pointReturn[1] += 45
        pointReturn[2] += 22
        pointReturn[3] += 17
        
    }
    else if userAnswer.contains("I don't care what people think")
    {
      
        pointReturn[0] += 18
        pointReturn[1] += 20
        pointReturn[2] += 22
        pointReturn[3] += 45
        
    }
    else if userAnswer.contains("The Wise")
    {
      
        pointReturn[0] += 19
        pointReturn[1] += 46
        pointReturn[2] += 19
        pointReturn[3] += 16
        
    }
    else if userAnswer.contains("The Good")
    {
      
        pointReturn[0] += 17
        pointReturn[1] += 16
        pointReturn[2] += 44
        pointReturn[3] += 17
        
    }
    else if userAnswer.contains("The Great")
    {
      
        pointReturn[0] += 20
        pointReturn[1] += 22
        pointReturn[2] += 20
        pointReturn[3] += 44
        
    }
    else if userAnswer.contains("The Bold")
    {
      
        pointReturn[0] += 44
        pointReturn[1] += 17
        pointReturn[2] += 16
        pointReturn[3] += 23
        
    }
    else if userAnswer.contains("Ask what makes them")
    {
      
        pointReturn[0] += 17
        pointReturn[1] += 45
        pointReturn[2] += 20
        pointReturn[3] += 17
        
    }
    else if userAnswer.contains("Agree, and ask whether they’d")
    {
      
        pointReturn[0] += 21
        pointReturn[1] += 17
        pointReturn[2] += 20
        pointReturn[3] += 41
        
    }
    else if userAnswer.contains("Agree, and walk away, leaving")
    {
      
        pointReturn[0] += 47
        pointReturn[1] += 21
        pointReturn[2] += 15
        pointReturn[3] += 23
        
    }
    else if userAnswer.contains("Tell them that you are worried")
    {
      
        pointReturn[0] += 16
        pointReturn[1] += 17
        pointReturn[2] += 45
        pointReturn[3] += 20
        
    }
    else if userAnswer.contains("Standing on top of something")
    {
      
        pointReturn[0] += 20
        pointReturn[1] += 46
        pointReturn[2] += 18
        pointReturn[3] += 20
        
    }
    else if userAnswer.contains("An eye at the keyhole of the dark")
    {
      
        pointReturn[0] += 45
        pointReturn[1] += 18
        pointReturn[2] += 17
        pointReturn[3] += 18
        
    }
    else if userAnswer.contains("Waking up to find that neither your")
    {
      
        pointReturn[0] += 17
        pointReturn[1] += 15
        pointReturn[2] += 45
        pointReturn[3] += 15
        
    }
    else if userAnswer.contains("Being forced to speak in such a silly")
    {
      
        pointReturn[0] += 18
        pointReturn[1] += 21
        pointReturn[2] += 20
        pointReturn[3] += 47
        
    }
    return pointReturn
}

