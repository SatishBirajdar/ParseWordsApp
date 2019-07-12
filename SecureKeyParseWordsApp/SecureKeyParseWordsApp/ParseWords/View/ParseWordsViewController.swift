//
//  ViewController.swift
//  SecureKeyParseWordsApp
//
//  Created by Satish Birajdar on 2019-06-22.
//  Copyright © 2019 SBSoftwares. All rights reserved.
//

import UIKit

/// ParseWordsViewController is responsible for UI part of the View Controller in Main Storyboard
class ParseWordsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var InputTextField: UITextField!
    @IBOutlet weak var ParseButton: UIButton!
    @IBOutlet weak var ResultLabel: UILabel!
    
    // MARK: - Parameters
    var model = ParseWordsViewModel()
    let emptyResultText = "No parsing words found in the Input"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Triger the text changed function when InputTextField is changed
        InputTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    // This function checks for empty text field
    @objc func textFieldDidChange(_ textField: UITextField) {
        if (textField.text?.isEmpty)! {
            // textfield is empty
            ParseButton.isEnabled = false
        } else {
            // textfield is not empty
            ParseButton.isEnabled = true
        }
    }
    
    // Action for ParseButton
    @IBAction func ParseButtonClicked(_ sender: Any) {
        self.ResultLabel.text = ""
        let inputString = InputTextField.text!
        
        model.parseWordsArrayIn(input: inputString)
        
        if let result = model.resultArray {
            if result.count > 0 {
                self.ResultLabel.text = result.joined(separator: ", ")
            } else {
                self.ResultLabel.text = emptyResultText
            }
        } else {
            print("Result is Nil.")
        }
    }
}

