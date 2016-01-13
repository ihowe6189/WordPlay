//
//  AdjectiveController.swift
//  WordPlay
//
//  Created by Ian W. Howe on 11/24/15.
//  Copyright © 2015 Ian W. Howe. All rights reserved.
//

import UIKit
class AdjectiveController: UIViewController {
    
    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var adjectiveButton: UIButton!
    @IBOutlet weak var adjectiveProgressBar: UIProgressView!
    @IBOutlet weak var adjectiveTenseLabel: UILabel!
    
    var importMadLib = MadLib()
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.lightGreenColor()
        adjectiveTenseLabel.text = importMadLib.adjectiveTense
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

    @IBAction func adjectiveTextFieldEditingChanged(sender: UITextField) {
        importMadLib.adjective = adjectiveTextField.text!
        if adjectiveTextField.text != ""
        {
            adjectiveButton.enabled = true
            adjectiveProgressBar.progress = 1
        }
        else
        {
            adjectiveButton.enabled = false
            adjectiveProgressBar.progress = 0.666
        }
    }
}
