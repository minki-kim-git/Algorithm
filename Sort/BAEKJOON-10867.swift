//
//  BAEKJOON-10867.swift
//  
//
//  Created by 김민기 on 2022/07/16.
//

import Foundation
//10867

var arr = Array(repeating:0,count:1001)
var n = Int(readLine()!)!
//var input = readLine()!.split(separator:" ").map{Int(String($0))!}
let input = readLine()!
let result = input.split(separator:" ").map{Int(String($0))!}
for i in result{
    arr[i] = 1
}

for j in 1..<arr.count{
    if arr[j] == 1{
        print(j,terminator:" ")
    }
}
