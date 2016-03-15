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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       if var filePath =  NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3")
        
       {
        var filePathUrl = NSURL.fileURLWithPath(filePath)
        var audioPlayer = AVAudioPlayer(contentsOfURL: <#T##NSURL#>)
       } else {
        println("the filePath is empty")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func playSlowAudio(sender: UIButton) {
        audioPlayer.play
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
