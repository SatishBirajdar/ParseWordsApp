//
//  ParseWordsViewModel.swift
//  SecureKeyParseWordsApp
//
//  Created by Satish Birajdar on 2019-06-22.
//  Copyright © 2019 SBSoftwares. All rights reserved.
//

import Foundation

/// ParseWordsViewModel performs functional part of the ParseWordsViewController including function providing action for parse button.
class ParseWordsViewModel {
    var resultArray:  [String]?

    // This function performs parsing of the text provided by the user
    func parseWordsArrayIn(input:  String) {
        resultArray = [String] ()
        
        // Convert the input text to lower case for parsing it in better way
        let inputInLowerCase =  input.lowercased()
        
        // wordArray is the array of the word to be parsed
        // You can add any number of words in this array that you want to get it parsed
        // For now I have added some words relevant to my Unit Tests and the Interview problem description
        let wordsArray = ["apple","pie","shoe","second","secondary"]

        // Parse the inputString for wordArray and put results in resultArray
        // Time Complexity of following logic is O(n) i.e. O(5)
        for i in 0...wordsArray.count-1 {
            if inputInLowerCase.contains(wordsArray[i]){
                self.resultArray?.append(wordsArray[i])
                print(wordsArray[i])
            } else {
                continue
            }
        }
    }
}
