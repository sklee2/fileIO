//
//  ConsoleIO.swift
//  fileIO
//
//  Created by SKLEE on 22/04/2019.
//  Copyright © 2019 SKLEE. All rights reserved.
//

import Foundation

class ConsoleIO {
    
    func getInput() -> String {
        let keyboard : FileHandle = FileHandle.standardInput
        let inputData : Data = keyboard.availableData
        let strData = String (data : inputData, encoding: String.Encoding.utf8)
        return (strData?.trimmingCharacters(in: CharacterSet.newlines))!
    }
}
