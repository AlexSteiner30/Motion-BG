//
//  LoadBackground.swift
//  Motion BG
//
//  Created by Alex Marco Steiner on 24/01/23.
//

import Foundation
import SwiftUI

var count = 0

func LoadBackground(fileURLStringBase:String){
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
            break
        }
    }
}
