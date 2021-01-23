//
//  Question.swift
//  quizApp
//
//  Created by Vaibhavi dalwadi on 2020-07-30.
//  Copyright © 2020 Vaibhavi dalwadi. All rights reserved.
//

import Foundation

class Question {
    let question : String
    let choice1 : String
    let choice2 : String
    let choice3 : String
    let actualAnswer : Int
    
    init(questionText : String, choice1 : String, choice2 : String, choice3 : String, answer : Int) {
        question = questionText
        self.choice1 = choice1
        self.choice2 = choice2
        self.choice3 = choice3
        actualAnswer = answer
        
    }
    
}
