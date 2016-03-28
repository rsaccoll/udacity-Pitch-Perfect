//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Ramses Jose Sacol de Almeida on 3/15/16.
//  Copyright © 2016 Isobar. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!
    
    func recordAudio() {
        var audioRecorder: AVAudioRecorder!
        
        let dirPath = NSSearchPathDirectoriesInDomains(NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) [0] as String,
        let recordingName ""
        let pathArray = [dirPath, recordingName]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
