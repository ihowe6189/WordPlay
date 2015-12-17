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
//    func enterNoun(newNoun:String){
//        noun = newNoun
//    }
//    func enterVerb(newVerb:String){
//        verb = newVerb
//    }
//    func enterAdjective(newAdjective:String){
//        adjective = newAdjective
//    }
    func createStory() -> String{
        return "Sometimes I stay up late at night, thinking about the effect of " + noun
                + " on my  " + adjective + " turtle when he chooses to " + verb + " various parts of the house."
    }
    
    //
    func createNSStringStory() -> NSMutableAttributedString{
        let story = self.createStory()
        
        let nounRange = (story as NSString).rangeOfString(noun)
        let verbRange = (story as NSString).rangeOfString(verb)
        let adjectiveRange = (story as NSString).rangeOfString(adjective)
        //Then you convert to attributed string and use 'add attribute' with NSForegroundColorAttributeName:
        
        let attributedString = NSMutableAttributedString(string: story)
        attributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.darkRedColor() , range: nounRange)
        attributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.darkBlueColor() , range: verbRange)
        attributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.darkGreenColor() , range: adjectiveRange)
        
        return attributedString
    }
}


