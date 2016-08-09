//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Ramses Jose Sacol de Almeida on 10/28/15.
//  Copyright © 2015 Isobar. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundsViewController: UIViewController, AVAudioRecorderDelegate {

    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var StopButton1: UIButton!
    @IBOutlet weak var recordingInProgress: UILabel!
    
    var audioRecorder:AVAudioRecorder!
    var recordedAudio:NSURL!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(animated: Bool) {
        StopButton1.hidden = true
        recordingInProgress.enabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func recordAudio(sender: UIButton) {
        print("record button pressed")
        recordingInProgress.hidden = false
        StopButton1.hidden = false
        recordButton.enabled = false
        let dirPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        let recordingName = "my_audio.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = NSURL.fileURLWithPathComponents(pathArray)
        print(filePath)
        
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord)
        
        try! audioRecorder = AVAudioRecorder(URL: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.meteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    
    @IBAction func stopRecording(sender: AnyObject) {
        print("stop recording pressedd")
        recordButton.enabled = true
        recordingInProgress.hidden = false
        StopButton1.hidden = true
        
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
    
    func audioRecorderDidFinishRecording(recorder: AVAudioRecorder, successfully flag: Bool) {//
        if(flag) {
            recordedAudio = recorder.url
            self.performSegueWithIdentifier("stopRecording", sender: recordedAudio)
        } else {
            print("Recording not successfull")
            recordButton.enabled = true
            StopButton1.hidden = true
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "stopRecording" {
            let playSoundVC = segue.destinationViewController as! PlaySoundsViewController
            let recordedAudioURL = sender as! NSURL
            playSoundVC.recordedAudioURL = recordedAudioURL
            //stopRecording
            
            //let playSoundVC:PlaySoundsViewController = segue.destinationViewController as! PlaySoundsViewController
            //let data = sender as! RecordedAudio
            //playSoundVC.receivedAudio = data
        }
    }
    

    @IBAction func stopAudio(sender: UIButton) {
        recordingInProgress.hidden = true
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }


}

