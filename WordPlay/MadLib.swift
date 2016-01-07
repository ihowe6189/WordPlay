//
//  MadLib.swift
//  WordPlay
//
//  Created by Ian W. Howe on 11/18/15.
//  Copyright © 2015 Ian W. Howe. All rights reserved.
//

import Foundation
import UIKit

class MadLib{
    var verb: String
    var adjective: String
    var noun: String
    
    init(){
        verb = ""
        adjective = ""
        noun = ""
    }

    func createStory() -> String
    {
        var loop = true
        
            let selector = Int(10 * drand48())
            print(selector) /*DEBUG*/
            if selector < 4 {
                return "Sometimes I stay up late at night, thinking about the effect of " + noun
                    + " on my  " + adjective + " turtle when he chooses to " + verb + " various parts of the house."
            }
            else if selector > 6 {
                return "One of President Lincoln's more " + adjective + " policy changes during his career involved the freedom for a " + noun + " to finally be able to " + verb + "."
            }
            else {
                return ""
            }
        
            
        
    }
    
    func createNSStringStory() -> NSMutableAttributedString
    {
        let story = self.createStory()
        
        let nounRange = (story as NSString).rangeOfString(noun)
        let verbRange = (story as NSString).rangeOfString(verb)
        let adjectiveRange = (story as NSString).rangeOfString(adjective)
        let attributedString = NSMutableAttributedString(string: story)
        attributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.darkRedColor() , range: nounRange)
        attributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.darkBlueColor() , range: verbRange)
        attributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.darkGreenColor() , range: adjectiveRange)
        
        return attributedString
    }
}


