//
//  ViewController.swift
//  Multiples
//
//  Created by Robert McBryde on 05/01/2016.
//  Copyright © 2016 Robert McBryde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var multiple = 0
    var currentTotal = 0
    let maxValue = 20
    var sum = 0
    
    // Outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var multipleInput: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var addLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    
    @IBAction func playButtonPressed(sender: UIButton) {
        startGame()
    }
    
    @IBAction func addButtonPressed(sender: UIButton) {
        if (sum < maxValue) {
            sum = currentTotal + multiple
            addLabel.text = "\(currentTotal) + \(multiple) = \(sum)"
            currentTotal = sum
        } else {
            restartGame()
        }
    }
    
    func startGame() {
        if multipleInput.text != nil && multipleInput.text != "" {
            multiple = Int(multipleInput.text!)!
            
            logoImage.hidden = true
            multipleInput.hidden = true
            playButton.hidden = true
            
            addLabel.hidden = false
            addButton.hidden = false
        }
    }
    
    func restartGame() {
        
            multiple = 0
            multipleInput.text = ""
            
            logoImage.hidden = false
            multipleInput.hidden = false
            playButton.hidden = false
            
            addLabel.hidden = true
            addButton.hidden = true
    }

}

