//
//  Common.swift
//  Motion BG
//
//  Created by robigan on 26/01/23.
//

import Foundation
import AppKit

func hideAllOtherApps() {
    NSWorkspace.shared.hideOtherApplications()
}

enum Motion_BGError: Error {
    case missingBG
}

class AppSettings {
    var basePath: String
    var startFrame: UInt16
    var endFrame: UInt16
    var currentFrame: UInt16
    var interval: UInt32
    
    static let shared = AppSettings(basePath: "", startFrame: 1, endFrame: 32, interval: 100)
    
    private var playing: Bool
    
    init(basePath: String, startFrame: UInt16, endFrame: UInt16, interval: UInt32) {
        self.basePath = basePath
        self.startFrame = startFrame
        self.endFrame = endFrame
        self.currentFrame = startFrame
        self.playing = false
        self.interval = interval
    }
    
    func isPlaying() -> Bool {
        return self.playing
    }
    
    func basePathAvailable() -> Bool {
        return !basePath.isEmpty
    }
    
    func clearBasePath() {
        basePath = ""
    }
}
