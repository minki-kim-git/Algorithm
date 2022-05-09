//
//  BAEKJOON-1264.swift
//  
//
//  Created by 김민기 on 2022/05/09.
//

import Foundation
while let input = readLine(){ 
    if input == "#" {
        break
    }
    var count = 0
    for i in input {
        if i == "a" || i == "e" || i == "i" || i == "o" || i == "u" || i == "A" || i == "E" || i == "I" || i == "O" || i == "U" {
           count += 1
        }
    }
    print(count)
}
