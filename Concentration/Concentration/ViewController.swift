//
//  ViewController.swift
//  Concentration
//
//  Created by Yuanyuan LI on 2020-02-13.
//  Copyright © 2020 Yuanyuan LI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emjiChoices = ["😉","🤗","😉","🤗"]
    
    
    @IBAction func touchingCard(_ sender: UIButton) {
        flipCount += 1
        if  let cardNumber = cardButtons.firstIndex(of: sender) {
            flipCard(withEmoji: emjiChoices[cardNumber], on: sender)
        }
    }
    
    func flipCard(withEmoji emoji: String,  on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = UIColor.orange
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = UIColor.white
        }
    }
    
//    func updateFlipCount(flipCount: Int, flipCountLabel: UILabel) {
//        self.flipCount += 1
//        flipCountLabel.text = "Flips: \(flipCount)"
//    }
}
