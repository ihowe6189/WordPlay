//
//  NounController.swift
//  WordPlay
//
//  Created by Ian W. Howe on 11/19/15.
//  Copyright © 2015 Ian W. Howe. All rights reserved.
//

import UIKit

class NounController: UIViewController {
    var importMadLib = MadLib()
    @IBOutlet weak var nounTextField: UITextField!
    @IBOutlet weak var nounButton: UIButton!
    @IBOutlet weak var nounProgressBar: UIProgressView!
    @IBOutlet weak var nounTenseLabel: UILabel!
    
    var progressBarValue = 0.0
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.lightRedColor()
        nounTenseLabel.text = importMadLib.nounTense
        super.viewDidLoad()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "nounToVerb"{
            let verbController = segue.destinationViewController as! VerbController
            verbController.importMadLib = importMadLib
            verbController.title = importMadLib.noun
        }
    }
    @IBAction func nounTextFieldEditingChanged(sender: UITextField) {
        importMadLib.noun = nounTextField.text!
        if nounTextField.text != ""{
            nounButton.enabled = true
            nounProgressBar.progress = 0.333
        }
        else{
            nounButton.enabled = false
            nounProgressBar.progress = 0
        }
    }
}
