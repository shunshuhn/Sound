//
//  ViewController.swift
//  Sound
//
//  Created by 伊藤　陽香 on 2020/09/15.
//  Copyright © 2020 伊藤　陽香. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButtun: UIButton!
    
    @IBOutlet var pianoButton: UIButton!
    
    @IBOutlet var guitarButton: UIButton!
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func touchDownDrumButton() {
    
        drumButtun.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
      drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
    
        
    }
    
    @IBAction func touchUpDrumButton(){
        
        drumButtun.setImage(UIImage(named: "drumImage"), for: .normal)
    
        
    }
    
    @IBAction func touchDownPianoButton() {
        
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        
        pianoSoundPlayer.currentTime = 0
        
        pianoSoundPlayer.play()
        
    }
    
    @IBAction func touchUpPianoButton(){
        
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
        
    }
    
    @IBAction func touchDownGuitarButton(){
       
        guitarButton.setImage(UIImage(named:"guitarPlayingImage"), for: .normal)
        
        guitarSoundPlayer.currentTime = 0
        
        guitarSoundPlayer.play()
    }
    
    @IBAction func touchUpGuitarButton() {
        
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
        
    }
        
}
