//
//  ViewController.swift
//  quizApp
//
//  Created by Vaibhavi dalwadi on 2020-07-30.
//  Copyright © 2020 Vaibhavi dalwadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLbl: UILabel!
    
    @IBOutlet weak var questionLbl: UILabel!
    
    @IBOutlet weak var choice1Btn: UIButton!
    
    @IBOutlet weak var choice2Btn: UIButton!
    
    @IBOutlet weak var choice3Btn: UIButton!
    
    @IBOutlet weak var progress: UIProgressView!
    
    let allQuestions = Questionbank()
    var questionNumber = 0
    var score = 0
    var userAnswer = 0
    
    @IBAction func pressedBtn(_ sender: UIButton) {
        if sender.tag == userAnswer {
            print("Correct")
            sender.backgroundColor = UIColor.green
            score += 1
        }else{
            print("Wrong")
            sender.backgroundColor = UIColor.red
        }
        questionNumber += 1
        updateQuestion()
    }
    
    func updateQuestion() {
        
        if questionNumber + 1 <= allQuestions.quiz.count{
            questionLbl.text = allQuestions.quiz[questionNumber].question
            choice1Btn.setTitle(allQuestions.quiz[questionNumber].choice1, for: UIControl.State.normal)
            choice2Btn.setTitle(allQuestions.quiz[questionNumber].choice2, for: UIControl.State.normal)
            choice3Btn.setTitle(allQuestions.quiz[questionNumber].choice3, for: UIControl.State.normal)
            userAnswer = allQuestions.quiz[questionNumber].actualAnswer
            
        }else{
            let alert = UIAlertController(title: "Marvelous", message: "End of Quiz, Do you want to start over?",  preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        //updateUI()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        scoreLbl.text = String(score)
        choice1Btn.backgroundColor = UIColor.yellow
        choice2Btn.backgroundColor = UIColor.yellow
        choice3Btn.backgroundColor = UIColor.yellow
        progress.progress = Float(questionNumber) / Float(allQuestions.quiz.count)
        
    }
    
    func restartQuiz()  {
        score = 0
        questionNumber = 0
        updateQuestion()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
        
    }


}

