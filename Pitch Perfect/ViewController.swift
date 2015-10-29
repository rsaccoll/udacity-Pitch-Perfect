//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Ramses Jose Sacol de Almeida on 10/28/15.
//  Copyright © 2015 Isobar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    
    @IBOutlet weak var stopAudio: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordingInProgress.hidden = false
        stopAudio.hidden = true
        // TODO: Record the user's voice
        print("Record in Action")
    }

}

