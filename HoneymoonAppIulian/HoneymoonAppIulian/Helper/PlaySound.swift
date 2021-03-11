//
//  PlaySound.swift
//  HoneymoonAppIulian
//
//  Created by Macbook Pro on 11.03.2021.
//

import AVFoundation
var audioPlayer: AVAudioPlayer?

func playSound(sound:String, type: String){
    if let path=Bundle.main.path(forResource: sound, ofType: type){
        do{
        audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
        audioPlayer?.play()
        }catch{
            print("We have a problem with audio file!")
        }
    }
}
