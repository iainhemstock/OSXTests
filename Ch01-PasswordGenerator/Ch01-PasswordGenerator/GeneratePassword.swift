//
//  GeneratePassword.swift
//  Ch01-PasswordGenerator
//
//  Created by Iain Hemstock on 22/05/2017.
//  Copyright © 2017 Iain Hemstock. All rights reserved.
//

import Foundation

private let characters = Array(("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ").characters)

func generateRandomString(length: Int) -> String {
    var string = ""
    
    for _ in 0..<length {
        string.append(generateRandomCharacter())
    }
    return string
}

func generateRandomCharacter() -> Character {
    let index = Int(arc4random_uniform(UInt32(characters.count)))
    
    let character = characters[index]
    return character
}
