//
//  Quiz.swift
//  Quiz
//
//  Created by Rafael Dreher on 3/13/18.
//  Copyright © 2018 Rafael Dreher. All rights reserved.
//

import Foundation

class Quiz {
    var id: Int
    var question: String = ""
    var answer: String = ""
    
    init(id: Int, question: String, answer: String) {
        self.id = id
        self.question = question
        self.answer = answer
    }
}
