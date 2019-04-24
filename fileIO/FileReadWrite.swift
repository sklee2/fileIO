//
//  FileReadWrite.swift
//  fileIO
//
//  Created by SKLEE on 24/04/2019.
//  Copyright © 2019 SKLEE. All rights reserved.
//

import Foundation

class FileReadWrite {
    var fname: String = ""

    func readStringFromTxtFile(with fname: String) -> String {
        guard let path = Bundle.main.url(forResource: fname, withExtension: "txt")
            else { return "" }
        do {
            print(path)
            let content = try String(contentsOf: path, encoding: .utf8)
            return content
        } catch { return "" }
    }

    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }

    func writeFile() {
        let filename = getDocumentsDirectory().appendingPathComponent("output.txt")

        do {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
            print ("Success")
        } catch {
            print ("Failed")
        }
    }

}
