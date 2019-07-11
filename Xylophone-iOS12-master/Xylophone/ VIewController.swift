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


    @IBAction func notePressed(_ sender: UIButton) {
        //let tag = sender.tag
        let url = Bundle.main.path(forResource: "note1", ofType: "wav")

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
            audioPlayer.play()
        } catch {
            print(error)
        }
        
    }
    
  

}

