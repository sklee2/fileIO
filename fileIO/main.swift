//
//  main.swift
//  fileIO
//
//  Created by SKLEE on 22/04/2019.
//  Copyright © 2019 SKLEE. All rights reserved.
//

import Foundation

print("Hello, World!")
//let consoleIO = ConsoleIO()
//print("당신의 이름은 무엇입니까?")
//var str = consoleIO.getInput()
//print("당신의 이름은 \(str)입니다.")
//
//
//var f = FileReadWrite()
//
//var str2 : String? = f.readStringFromTxtFile(with: "hello")
//
//print (str2!)

var str = "Hello, playground"

// get URL to the the documents directory in the sandbox
let documentsUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0] as NSURL

// add a filename
let fileUrl = documentsUrl.appendingPathComponent("foo2.txt")

// write to it
//try! str.write(to: fileUrl!, atomically: true, encoding: String.Encoding.utf8)

do {
    let readText: String? = try String(contentsOf: fileUrl!)
    print(readText!)
}
