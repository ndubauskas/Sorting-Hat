//
//  Question.swift
//  Sorting Hat
//
//  Created by Nick Dubauskas on 3/14/23.
//

import Foundation

class Question{
    var questionNum = 0
    var gPoint = 0
    var sPoint = 0
    var hPoint = 0
    var rPoint = 0
    var questionPrompt = ""
    var questionSet = 0
    
    init(questionNum: Int = 0, gPoint: Int = 0, sPoint: Int = 0, hPoint: Int = 0, rPoint: Int = 0, questionPrompt: String = "", questionSet: Int = 0) {
        self.questionNum = questionNum
        self.gPoint = gPoint
        self.sPoint = sPoint
        self.hPoint = hPoint
        self.rPoint = rPoint
        self.questionPrompt = questionPrompt
        self.questionSet = questionSet
    }
    
}

let question1 = Question(questionNum:1, gPoint: 73,sPoint: 26, hPoint: 30, rPoint:73, questionPrompt: "Dusk or Dawn", questionSet: 1)



