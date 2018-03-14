//
//  ViewController.swift
//  Quiz
//
//  Created by Rafael Dreher on 7/20/17.
//  Copyright © 2017 Rafael Dreher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Set the output of methods
    // Drag from ViewControler to UILabel
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    // Array of constants
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Washington?",
        "What is cognac made from?"
    ]
    //Array of constants
    let answers: [String] = [
        "14",
        "Olympia",
        "Grapes"
    ]
    
    var currentQuestionIndex: Int = 0
    
    // Set the actions for the methods
    // Drag from the UIButton to the ViewControler
    @IBAction func showNextQuestion(_sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }

    @IBAction func showAnswer(_sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

