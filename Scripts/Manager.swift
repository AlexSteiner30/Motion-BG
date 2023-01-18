//
//  Manager.swift
//  Motion BG
//
//  Created by Alex Marco Steiner on 18/01/23.
//

import Foundation
import SwiftUI

func Start(){    
    let background = Thread {
        LoadBackground()
    }
    
    background.start()
}

func Update(){
    
}
