//
//  LoadBackground.swift
//  Motion BG
//
//  Created by Alex Marco Steiner on 24/01/23.
//

import Foundation
import AppKit

func loadBasePath() {
    let data = getFileURLString()
    
    if (data.pathReturned != false) {
        AppSettings.shared.basePath = data.path
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

func displayBackground() {
    let background = Thread {
        executeBackground()
    }

    background.start()
}

func executeBackground(){
    var count = AppSettings.shared.startFrame
    
    while true {
        do {
            if count > AppSettings.shared.endFrame {
                count = AppSettings.shared.startFrame
            }
            if !AppSettings.shared.basePathAvailable() {
                throw Motion_BGError.missingBG
            }
            
            let fileURL = URL(fileURLWithPath: AppSettings.shared.basePath + "/frame" + String(count) + ".gif")
            let screensToTry = NSScreen.screens
            for screen in screensToTry {
                try NSWorkspace.shared.setDesktopImageURL(fileURL, for: screen)
            }
            
            count += 1
            
            usleep(AppSettings.shared.interval);
        }
        catch {
            break
        }
    }
}
