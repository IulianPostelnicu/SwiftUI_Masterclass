//
//  PlaySound.swift
//  LearnByDoin_
//
//  Created by Macbook Pro on 16.03.2021.
//

import Foundation
import AVFoundation

//MARK: - audio player

var audioPlayer:AVAudioPlayer?

func playSound(sound: String, type:String){
    if let path=Bundle.main.path(forResource: sound, ofType: type){
    do{
        audioPlayer=try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
        audioPlayer?.play()
    }catch{
        print("Can t play sound")
    }
}
}
