//
//  convertToCamelCase.swift
//  AmberBackend
//
//  Created by Robert Thompson on 1/16/15.
//  Copyright (c) 2015 WillowTree Apps. All rights reserved.
//

import Foundation

@objc public class Converter
{
    public class func convertToCamelCase(input: String) -> String
    {
        let words: [String] = split(input) {
            $0 == "_"
        }
        
        let firstWord = words[0]
        let otherWords = words[1..<words.count]
        
        let capitalizedOtherWords = otherWords.map {
            (word: String) -> String in
            return word.capitalizedString
        }
        
        
        
        return join("", [firstWord] + capitalizedOtherWords)
    }
    
    public class func convertToTh(number: Int) -> String
    {
        switch abs(number) {
        case let x where x < 3 && x != 0:
            switch x {
            case 1:
                return "\(number)<sup>st</sup>"
            case 2:
                return "\(number)<sup>nd</sup>"
            case 3:
                return "\(number)<sup>rd</sup>"
            default:
                abort() // universe is broken
            }
        default:
            return "\(number)<sup>th</sup>"
        }
    }
}