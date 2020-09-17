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
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

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
    
}
