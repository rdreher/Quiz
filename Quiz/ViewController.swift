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
    
    var quizList: [Quiz] = []
    var currentQuestionIndex: Int = 0
    
    // Set the actions for the methods
    // Drag from the UIButton to the ViewControler
    @IBAction func showNextQuestion(_sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == quizList.count {
            currentQuestionIndex = 0
        }
        
        let question: String = quizList[currentQuestionIndex].question
        questionLabel.text = question
        answerLabel.text = "???"
    }

    @IBAction func showAnswer(_sender: UIButton) {
        let answer: String = quizList[currentQuestionIndex].answer
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize our Quiz ModelClass with data
        quizList.append(Quiz(id: 0, question: "What is 7+7?", answer: "14"))
        quizList.append(Quiz(id: 1, question: "What is the capital of Washington?", answer: "Olympia"))
        quizList.append(Quiz(id: 2, question: "What is cognac made from?", answer: "Grapes"))
        questionLabel.text = quizList[currentQuestionIndex].question
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

