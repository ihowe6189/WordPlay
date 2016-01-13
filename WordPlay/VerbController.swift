//
//  VerbController.swift
//  WordPlay
//
//  Created by Ian W. Howe on 12/10/15.
//  Copyright © 2015 Ian W. Howe. All rights reserved.
//

import Foundation
import UIKit

class VerbController: UIViewController {
    
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var verbButton: UIButton!
    @IBOutlet weak var verbProgressBar: UIProgressView!
    @IBOutlet weak var verbTenseLabel: UILabel!
    
    var importMadLib = MadLib()

    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.lightBlueColor()
        verbTenseLabel.text = importMadLib.verbTense
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "verbToAdjective"{
            let adjectiveController = segue.destinationViewController as! AdjectiveController
            adjectiveController.importMadLib = importMadLib
            adjectiveController.title = importMadLib.verb
        }
    }
 
    @IBAction func verbTextFieldEditingChanged(sender: UITextField) {
        importMadLib.verb = verbTextField.text!
        if verbTextField.text != ""{
            verbButton.enabled = true
            verbProgressBar.progress = 0.666
        }
        else{
            verbButton.enabled = false
            verbProgressBar.progress = 0.333
        }
    }

    
}
