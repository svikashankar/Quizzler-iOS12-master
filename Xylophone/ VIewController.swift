//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    var selectedSoundFileName: String = ""
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var audioPlayer : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
    //  let url = Bundle.main.url(forResource: "note1", withExtension: "wav")
        selectedSoundFileName = soundArray[sender.tag - 1]
        
      playSound()
    }
    
    func playSound()   {
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }
}
