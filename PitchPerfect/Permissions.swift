//
//  Permissions.swift
//  PitchPerfect
//
//  Created by Roberto Jesus Amaral on 25/08/21.
//

import Foundation
import AVFoundation
import AVKit

class Permissions{
    
    func recordPermission(){
        switch AVAudioSession.sharedInstance().recordPermission {
        case AVAudioSessionRecordPermission.granted:
            print("permisao garantida")
        case AVAudioSessionRecordPermission.denied:
            print("permisao garantida")
        case AVAudioSessionRecordPermission.undetermined:
            print("permisao garantida")
            AVAudioSession.sharedInstance().requestRecordPermission({(granted) in
                //Handle granted
            })
        @unknown default:
            print("no one works")
        }
    }
   

}

