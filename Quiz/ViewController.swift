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
    @IBOutlet var currentQuestionLabel: UILabel!
    @IBOutlet var nextQuestionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    var quizList: [Quiz] = []
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize our Quiz ModelClass with data
        quizList.append(Quiz(id: 0, question: "What is 7+7?", answer: "14"))
        quizList.append(Quiz(id: 1, question: "What is the capital of Washington?", answer: "Olympia"))
        quizList.append(Quiz(id: 2, question: "What is cognac made from?", answer: "Grapes"))
        currentQuestionLabel.text = quizList[currentQuestionIndex].question
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Set the label's initial aplha
        nextQuestionLabel.alpha = 0
    }
    
    // Set the actions for the methods
    // Drag from the UIButton to the ViewControler
    @IBAction func showNextQuestion(_sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == quizList.count {
            currentQuestionIndex = 0
        }
        
        let question: String = quizList[currentQuestionIndex].question
        nextQuestionLabel.text = question
        answerLabel.text = "???"
        animateLabelTransitions()
    }
    
    @IBAction func showAnswer(_sender: UIButton) {
        let answer: String = quizList[currentQuestionIndex].answer
        answerLabel.text = answer
    }
    
    func animateLabelTransitions() {
        // Animate the alpha
        UIView.animate(withDuration: 0.5,
           delay: 0,
           options: [],
           animations: {
            self.currentQuestionLabel.alpha = 0
            self.nextQuestionLabel.alpha = 1
        },
           completion: { _ in
            swap(&self.currentQuestionLabel,
                 &self.nextQuestionLabel)
        })
    }
    

}

