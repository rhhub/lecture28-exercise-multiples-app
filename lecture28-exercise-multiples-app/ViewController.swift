//
//  ViewController.swift
//  lecture28-exercise-multiples-app
//
//  Created by Ryan Huebert on 11/15/15.
//  Copyright © 2015 Ryan Huebert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    private let maxMultiple = 12
    
    private var total: Int { return lastTotal + base }
    private var lastTotal: Int { return base * multiple }
    private var base = 0
    private var multiple = 0 {
        didSet {
            displayLabel?.text = "\(lastTotal) + \(base) = \(total)"
        }
    }
    
    @IBOutlet weak private var titleImage: UIImageView!
    @IBOutlet weak private var textField: UITextField!
    @IBOutlet weak private var playButton: UIButton!
    
    @IBOutlet weak private var displayLabel: UILabel!
    @IBOutlet weak private var addButton: UIButton!
    
    
    @IBAction private func playButtonPressed(sender: UIButton) {
        if let text = textField.text {
            if let base = Int(text) {
                
                titleImage.hidden = true
                textField.hidden = true
                playButton.hidden = true
                
                displayLabel.hidden = false
                addButton.hidden = false
                
                self.base = base
                multiple = 0
                
            }
        }
    }
    
    @IBAction private func addButtonPressed(sender: UIButton) {
        multiple += 1
        
        if multiple > maxMultiple {
            titleImage.hidden = false
            textField.hidden = false
            playButton.hidden = false
            
            displayLabel.hidden = true
            addButton.hidden = true
        }
    }
}

