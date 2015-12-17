//
//  ViewController.swift
//  WordPlay
//
//  Created by Ian W. Howe on 11/6/15.
//  Copyright © 2015 Ian W. Howe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mainMadLib = MadLib()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "openingToNoun"
        {
            let nounController = segue.destinationViewController as! NounController
            nounController.importMadLib = mainMadLib
        }

    }


}
