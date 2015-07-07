//
//  PlayRecordedSoundsViewController.swift
//  Pitch Perfect
//
//  Created by Sukriti Nain on 12/06/15.
//  Copyright (c) 2015 SukritiNain. All rights reserved.
//

import UIKit
import AVFoundation

class PlayRecordedSoundsViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!
    var receivedAudio:RecordedAudio!

    override func viewDidLoad() {
        super.viewDidLoad()
        audioPlayer = AVAudioPlayer(contentsOfURL:receivedAudio.filePathUrl, error:nil)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playSlowAudio(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 0.5
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
    
    @IBAction func playFastAudio(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 1.5
        audioPlayer.currentTime = 0.0
        audioPlayer.play()

    }
    
    @IBAction func stopAudio(sender: UIButton) {
        audioPlayer.stop()
    }
}
