//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Ramses Jose Sacol de Almeida on 10/28/15.
//  Copyright © 2015 Isobar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var StopButton1: UIButton!
    @IBOutlet weak var recordingInProgress: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(animated: Bool) {
        StopButton1.hidden = true
        recordButton.enabled = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func recordAudio(sender: UIButton) {
        StopButton1.hidden = false
        recordingInProgress.hidden = false
        recordButton.enabled = false
        // TODO: Record the user's voice
        print("Record in Action")
    }
    

    @IBAction func stopAudio(sender: UIButton) {
        recordingInProgress.hidden = true
    }


}

