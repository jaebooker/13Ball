//
//  ViewController.swift
//  13Ball
//
//  Created by Jaeson Booker on 10/23/18.
//  Copyright © 2018 Jaeson Booker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let questionFinder: [Int: String] = [0: question1, 1: question2, 2: question3, 3: question4]
    let answerFinder: [Int: String] = [0: answer1, 1: answer2, 2: answer3, 3: answer4]
    @IBAction func pushIt(_ sender: Any) {
        let randomInt = Int.random(in: 0 ... 3)
        answer.text = answerFinder[randomInt]
        answer.alpha = 1
    }
    
    @IBAction func skipIt(_ sender: UIButton) {
        let randomInt = Int.random(in: 0 ... 3)
        question.text = questionFinder[randomInt]
        answer.text = "Answer"
        answer.alpha = 0.4
    }
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var answer: UILabel!
    override func viewDidLoad() {
        let randomInt = Int.random(in: 0 ... 3)
        question.text = questionFinder[randomInt]
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

let question1: String = "WIll there ever be peace on Earth?"
let question2: String = "When is the sequel to World War II coming out? There's been talk of it for some time, but it keeps getting delayed. :( "
let question3: String = "How many times should I get married before settling on the right one? ;) "
let question4: String = "Can I win the powerball if I apply a possitive attitude and good work ethic?"
let answer1: String = "Fuck that!"
let answer2: String = "Never. Never ever."
let answer3: String = "The answer shall come to you in a dream, in the form of a talking goat with laringitis"
let answer4: String = "In order to succeed at this, you must grab your boss by the balls."
