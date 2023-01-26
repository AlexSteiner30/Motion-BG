//
//  LoadBackground.swift
//  Motion BG
//
//  Created by Alex Marco Steiner on 24/01/23.
//

import Foundation
import AppKit

func loadBackgroundFlow() {
    var data = getFileURLString()
    
    if (data.pathReturned != false) {
        loadBackground(fileURLStringBase: data.path)
    }
}

struct BackgroundLoaderReturnValues {
    var pathReturned: Bool
    var path: String
}

func getFileURLString() -> BackgroundLoaderReturnValues {
    let dialog = NSOpenPanel();

    dialog.title                   = "Choose gif location";
    dialog.showsResizeIndicator    = true;
    dialog.showsHiddenFiles        = false;
    dialog.allowsMultipleSelection = false;
    dialog.canChooseDirectories    = true;
    dialog.canChooseFiles          = false;

    if (dialog.runModal() ==  NSApplication.ModalResponse.OK) {
        let result = dialog.url // Pathname of the file

        if (result != nil) {
            return BackgroundLoaderReturnValues(pathReturned: true, path: result!.path)
            
            // path contains the file path e.g
            // /Users/ourcodeworld/Desktop/file.txt
        } else {
            return BackgroundLoaderReturnValues(pathReturned: false, path: "")
        }
    } else {
        // User clicked on "Cancel"
        return BackgroundLoaderReturnValues(pathReturned: false, path: "")
    }
}

var count = 0

func loadBackground(fileURLStringBase: String) {
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
