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
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.lightRedColor()
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "nounToVerb"
        {
            let verbController = segue.destinationViewController as! VerbController
            verbController.importMadLib = importMadLib
            verbController.title = importMadLib.noun
        }
    }
    @IBAction func nountextFieldDidEnd(sender: UITextField){
        importMadLib.noun = nounTextField.text!
        nounButton.enabled = true
        
    }

    @IBAction func TapGestureRecognizer(sender: UITapGestureRecognizer) {
        importMadLib.noun = nounTextField.text!
        nounButton.enabled = true
    }
    
    
    
}
