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
    
    func animateProgress(newValue: Double)
    {
        var oldValue = Int(100 * nounProgressBar.progress)
        let newValue = Int(100 * newValue)
        if oldValue != newValue
        {
            if(newValue > oldValue)
            {
                for i in oldValue...newValue
                {
                    //http://stackoverflow.com/questions/29743581/xcode-swift-ios-app-adding-delay
                    dispatch_after(1,
                        dispatch_get_main_queue()){
                            nounProgressBar.progress = Float(i) / 100
                    }
                }
            }
            else
            {
                while oldValue >= newValue
                {
                    nounProgressBar.progress = Float(oldValue) / 100
                    --oldValue
                    //sleep(1)
                }
            }
        }
    }
    
    @IBAction func nounTextFieldEditingChanged(sender: UITextField) {
        importMadLib.noun = nounTextField.text!
        if nounTextField.text != ""
        {
            nounButton.enabled = true
            //nounProgressBar.progress = 0.333
            animateProgress(0.333)
        }
        else
        {
            nounButton.enabled = false
            //nounProgressBar.progress = 0
            animateProgress(0)
        }
        
    }
}
