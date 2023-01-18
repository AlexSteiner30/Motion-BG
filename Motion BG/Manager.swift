//
//  Manager.swift
//  Montion BG
//
//  Created by Alex Marco Steiner on 18/01/23.
//

import Foundation
import AppKit

// Variables
let fileURLStringBase = "/Users/alex.steiner/Desktop/Folder/frame"
var count = 0

func LoadBG(){
    while true{
        do{
            if count > 5{
                count = 0
            }
            
            let fileURL = URL(fileURLWithPath: fileURLStringBase + String(count) + ".gif")
            try NSWorkspace.shared.setDesktopImageURL(fileURL, for: NSScreen.main!)
            
            count+=1
            
            usleep(80000)
        }
        catch{
            print("Error")
        }
    }
}
