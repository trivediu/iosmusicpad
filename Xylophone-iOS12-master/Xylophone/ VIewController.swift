//
//  ViewController.swift
//  Xylophone
//
//

import UIKit
import AVFoundation


class ViewController: UIViewController{
    
    var audioPlayer = AVAudioPlayer()
    //var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    func triggerAudio(tagID: Int) {
        //get file and generate audio path
        let fileName: String = "note\(tagID)"
        let audioPath = Bundle.main.path(forResource: fileName, ofType: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            audioPlayer.play()
        } catch {
            print(error)
        }
        
    }

    @IBAction func notePressed(_ sender: UIButton) {
        let tagID = sender.tag
        triggerAudio(tagID: tagID)
    }
    
  

}

