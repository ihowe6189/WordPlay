//
//  AdjectiveController.swift
//  WordPlay
//
//  Created by Ian W. Howe on 11/24/15.
//  Copyright © 2015 Ian W. Howe. All rights reserved.
//

import UIKit
class AdjectiveController: UIViewController {
    
//    @IBOutlet weak var verbTextField: UITextField!
//    @IBOutlet weak var verbButton: UIButton!
    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var adjectiveButton: UIButton!
    
    var importMadLib = MadLib()
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.lightGreenColor()
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "adjectiveToFinal"
        {
            let finalController = segue.destinationViewController as! FinalController
            finalController.importMadLib = importMadLib
            finalController.title = "" + importMadLib.noun + " | " + importMadLib.verb + " | " + importMadLib.adjective
        }
    }
//    
//    @IBAction func verbTextFieldDIdEnd(sender: UITextField) {
//        importMadLib.noun = verbTextField.text!
//        verbButton.enabled = true
//    }
    
    @IBAction func adjectiveTextFieldDidEnd(sender: UITextField) {
        importMadLib.adjective = adjectiveTextField.text!
        adjectiveButton.enabled = true
    }
    
    @IBAction func tapGestureRecognizer(sender: UITapGestureRecognizer) {
        importMadLib.adjective = adjectiveTextField.text!
        adjectiveButton.enabled = true

    }
    
}
