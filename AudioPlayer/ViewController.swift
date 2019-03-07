//
//  ViewController.swift
//  AudioPlayer
//
//  Created by Amir Daliri on 7.03.2019.
//  Copyright © 2019 AmirDaliri. All rights reserved.
//

import UIKit
import AVFoundation
import Foundation

class ViewController: UIViewController {

    let ebi = "https://d2uqwoe9jzxxtn.cloudfront.net/music/src/Ebi_Jane-Javani_1419049923.mp3"
    
    var player : AVPlayer?

    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // I'm Here...
    }

    @IBAction func streamMusic(_ sender: Any) {
        loadRadio(radioURL: ebi)
    }
    
    @IBAction func playMusic(_ sender: Any) {
        player?.play()
    }
    
    @IBAction func pauseMusic(_ sender: Any) {
        player?.pause()
    }
    
    @IBAction func stopMusic(_ sender: Any) {
        player?.pause()
        guard let url = URL.init(string: ebi) else { return }
        let playerItem = AVPlayerItem.init(url: url)
        player = AVPlayer.init(playerItem: playerItem)
    }
    
    func loadRadio(radioURL: String) {
        guard let url = URL.init(string: radioURL) else { return }
        let playerItem = AVPlayerItem.init(url: url)
        player = AVPlayer.init(playerItem: playerItem)
        player?.play()
    }
}

