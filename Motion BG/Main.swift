
//
//  Background.swift
//  Motion BG
//
//  Created by Alex Marco Steiner on 18/01/23.
//

import Foundation
import AppKit


var count = 0

func LoadBackground(){
    print("Welcome to Motion BG, this command line tool was developed by Alex Steiner")
    print("Path to the folder with the frames: ", terminator: "")
    
    if let fileURLStringBase = readLine() {
        while true{
            do{
                if count > 266{
                    count = 0
                }
                
                let fileURL = URL(fileURLWithPath: fileURLStringBase + "/frame" + String(count) + ".gif")
                try NSWorkspace.shared.setDesktopImageURL(fileURL, for: NSScreen.main!)
                
                count+=1
                
                usleep(100000)
            }
            catch{
                print("An error occured check the if the numbers of frame is correct, the name of the file should look something like this frame0.gif, also check your path")
                break
            }
        }
    }
    else{
        LoadBackground()
    }
    
}

LoadBackground()
