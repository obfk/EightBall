//
//  ViewController.swift
//  EightBall
//
//  Created by Devin Brown on 6/13/15.
//  Copyright (c) 2015 Apress. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var answerView: UITextView!

    let answers = [ "\rYES", "\rNO", "\rMAYBE", "I\rDON'T\rKNOW",
        "TRY\rAGAIN\rSOON", "READ\rTHE\rMANUAL" ]


    func fadeFortune() {
        fadeOutAnswerView()
    }

    func newFortune() {
        let randomIndex = Int(arc4random_uniform(UInt32(answers.count)))
        answerView.text = answers[randomIndex]
        fadeInAnswerView()
    }

    // Internal Functions

    func fadeOutAnswerView() {
        UIView.animateWithDuration(0.75) {
            self.answerView.alpha = 0.0
        }
    }

    func fadeInAnswerView() {
        UIView.animateWithDuration(2.0) {
            self.answerView.alpha = 1.0
        }
    }
}

