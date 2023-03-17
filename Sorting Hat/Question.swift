//
//  Question.swift
//  Sorting Hat
//
//  Created by Nick Dubauskas on 3/14/23.
//

import Foundation


var questionNum2C = 0
var questionNum4C = 0
var answerNum2C = 0
var answerNum4C = 0
var questionLabelNum = 1
//Two choice answers
let questionBank = ["Dawn or Dusk?","Forest or River?", "Moon or Stars?","Black or White?", "Heads or Tails?", "Left or Right?"," Four boxes are placed before you. Which would you try and open?",
    "You and two friends need to cross a bridge guarded by a river troll who insists on fighting one of you before he will let all of you pass. Do you:"

]
let answer2C = ["Dawn", "Dusk","Forest", "River", "Moon", "Stars", "Black", "White", "Heads", "Tails","Left", "Right"]

let answer4C = ["The small tortoiseshell box, embellished with gold.","The gleaming jet black box with a silver lock and key.","The ornate golden casket, standing on clawed feet."," The small pewter box, unassuming and plain",
"Attempt to confuse the troll into letting all three of you pass without fighting?"," Suggest drawing lots to decide which of you will fight?","Suggest that all three of you should fight (without telling the troll)?"," Volunteer to fight?"]
//Four choice answers



//Scroll Wheel answer
/*
 
 Array question sets
 
 Q1
 Dawn or dusk?
 
 Q2
 Forest or river?

 Q3
 Moon or stars?

Q4
 Black or White?
 
 Q5
 Heads or Tails

 Q6
 Left or Right
 
 Q7
 Four boxes are placed before you. Which would you try and open?
 
 The small tortoiseshell box, embellished with gold,
 The gleaming jet black box with a silver lock and key,
 The ornate golden casket, standing on clawed feet,
 The small pewter box, unassuming and plain
 
 Q8
 You and two friends need to cross a bridge guarded by a river troll who insists on fighting one of you before he will let all of you pass. Do you:
 
 Attempt to confuse the troll into letting all three of you pass without fighting?
 Suggest drawing lots to decide which of you will fight?
 Suggest that all three of you should fight (without telling the troll)?
 Volunteer to fight?
 
 Q9
 Once every century, the Flutterby bush produces flowers that adapt their scent to attract the unwary. If it lured you, it would smell of:
 
 A crackling log fire
 The sea
 Fresh parchment
 Home
 
 Q10
 One of your house mates has cheated in a Hogwarts exam by using a Self-Spelling Quill. Professor Flitwick is suspicious of what happened. He draws you to one side after his lesson and asks you whether or not your classmate used a forbidden quill. What do you do?

 Lie and say you don’t know
 Tell Professor Flitwick that he ought to ask your classmate
 Tell Professor Flitwick the truth. If your classmate is prepared to win by cheating, he deserves to be found out.
 You would not wait to be asked to tell Professor Flitwick the truth.. If you knew that somebody was using a forbidden quill, you would tell the teacher before the exam started.
 
 Q11
 Which of the following do you find most difficult to deal with?
 
 Hunger
 Cold
 Loneliness
 Boredom
 Being ignored
 
 Q12
 You enter an enchanted garden. What would you be most curious to examine first?
 
 The silver leafed tree bearing golden apples
 The fat red toadstools that appear to be talking to each other
 The bubbling pool, in the depths of which something luminous is swirling
 The statue of an old wizard with a strangely twinkling eye
 
 Q14
 Four goblets are placed before you. Which would you choose to drink?

 The foaming, frothing, silvery liquid that sparkles as though containing ground diamonds.
 The smooth, thick, richly purple drink that gives off a delicious smell of chocolate and plums.
 The golden liquid so bright that it hurts the eye, and which makes sunspots dance all around the room.
 The mysterious black liquid that gleams like ink, and gives off fumes that make you see strange visions.
 
 Q15
 What kind of instrument most pleases your ear?

 The violin
 The trumpet
 The piano
 the drum
 
 Q16
 Which of the following would you most hate people to call you?

 Ordinary
 Ignorant
 Cowardly
 Selfish
 
 Q17
 After you have died, what would you most like people to do when they hear your name?
 
 Miss you, but smile
 Ask for more stories about your adventures
 Think with admiration of your achievements
 I don't care what people think of me after I'm dead.
 Q18
 How would you like to be known to history?

The Wise
The Good
The Bold
The Great
 
 Q19
 A Muggle confronts you and says that they are sure you are a witch or wizard. Do you:
 
 Ask what makes them think so?
 Agree, and ask whether they’d like a free sample of a jinx?
 Agree, and walk away, leaving them to wonder whether you are bluffing?
 Tell them that you are worried about their mental health, and offer to call a doctor.
 
 Q20
 Which nightmare would frighten you most?
 
 Standing on top of something very high and realizing suddenly that there are no hand- or footholds, nor any barrier to stop you falling.
 An eye at the keyhole of the dark, windowless room in which you are locked.
 Waking up to find that neither your friends nor your family have any idea who you are.
 Being forced to speak in such a silly voice that hardly anyone can understand you, and everyone laughs at you.
 
 Q21

 If you were attending Hogwarts, which pet would you choose to take with you?
 Tabby cat
 Siamese cat
 Ginger cat
 Black cat
 White cat
 Tawny owl
 Screech owl'
 Brown owl
 Snowy owl
 Barn owl
 Common toad
 Natterjack toad
 Dragon toad
 Harlequin toad
 Three toed tree toad
 
 

*/
