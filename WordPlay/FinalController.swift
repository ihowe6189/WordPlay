//
//  FinalController.swift
//  WordPlay
//
//  Created by Ian Howe on 12/13/15.
//  Copyright © 2015 Ian W. Howe. All rights reserved.
//

import Foundation
import UIKit

class FinalController: UIViewController {
    
    @IBOutlet weak var finalTextView: UITextView!
    
    var importMadLib = MadLib()
    
    override func viewDidLoad() {
        finalTextView.attributedText = importMadLib.createNSStringStory()
        super.viewDidLoad()
    }
}
