//
//  ViewController.swift
//  App Wex
//
//  Created by Diseño on 11/10/16.
//  Copyright © 2016 Desarrollo WEB Wexford. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "uke", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
            
        catch
        {
            //process error
        }
        player.play()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

