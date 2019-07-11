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


    func playAudio(tagID: Int) {
        //get file and generate audio path
        let fileName: String = "note\(tagID)"
        let audioPath = Bundle.main.path(forResource: fileName, ofType: "wav")
        
        
        
    }

    @IBAction func notePressed(_ sender: UIButton) {


        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
            audioPlayer.play()
        } catch {
            print(error)
        }
        
    }
    
  

}

