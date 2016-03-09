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
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
    }
    
    @IBAction func recordAudio(sender: UIButton) {
        stopButton.hidden = false
        recordingInProgress.hidden = false
        stopAudio.hidden = true
        // TODO: Record the user's voice
        print("Record in Action")
    }
    

    @IBAction func stopAudio(sender: UIButton) {
        recordingInProgress.hidden = true
    }


}

