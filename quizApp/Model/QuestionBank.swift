//
//  QuestionBank.swift
//  quizApp
//
//  Created by Vaibhavi dalwadi on 2020-07-30.
//  Copyright © 2020 Vaibhavi dalwadi. All rights reserved.
//

import Foundation

class Questionbank{
    var quiz = [Question]()
    
    init() {
        quiz.append(Question(questionText: "How many legs does a spider have?", choice1: "Ten", choice2: "Eight", choice3: "Twelve", answer: 2))
        quiz.append(Question(questionText: "What is the color of an emerald?", choice1: "Red", choice2: "White", choice3: "Green", answer: 3))
        quiz.append(Question(questionText: "What is something you hit with a hammer?", choice1: "Nail", choice2: "Screw", choice3: "your Head", answer: 1))
        quiz.append(Question(questionText: "What is a group of lions called?", choice1: "Murder", choice2: "Pride", choice3: "school", answer: 2))
        quiz.append(Question(questionText: "Which superhero can climb up walls and buildings?", choice1: "Thor", choice2: "Batman", choice3: "Spider Man", answer: 3))
        quiz.append(Question(questionText: "What is the largest mammal in the world?", choice1: "Dolphin", choice2: "Whale", choice3: "Shark", answer: 2))
        quiz.append(Question(questionText: "What is the largest state in America?", choice1: "Alaska", choice2: "Arizona", choice3: "California", answer: 1))
        quiz.append(Question(questionText: " Can you name the closest star to Earth?", choice1: "Moon", choice2: "Pole Star", choice3: "Sun", answer: 3))
         quiz.append(Question(questionText: " The Statue of Liberty came from which country to the United States?", choice1: "NewYork", choice2: "France", choice3: "California", answer: 2))
         quiz.append(Question(questionText: " In what country were the Olympic Games invented?", choice1: "Greece", choice2: "United States", choice3: "Canada", answer: 1))
    }
    
}
