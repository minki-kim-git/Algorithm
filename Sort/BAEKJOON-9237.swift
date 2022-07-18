//
//  BAEKJOON-9237.swift
//  
//
//  Created by 김민기 on 2022/07/18.
//

import Foundation

//9237
var n = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
input.sort()
input.reverse()
var maxNum = input[0]
var minCount = input[0]
for i in 1..<input.count {
    if maxNum <= input[i] && input[i-1] == input[i] {
        minCount += 1
    }
    maxNum -= 1

}

print(minCount + 2)
