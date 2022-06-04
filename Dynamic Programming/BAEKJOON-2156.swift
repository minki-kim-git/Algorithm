//
//  BAEKJOON-2156.swift
//  
//
//  Created by 김민기 on 2022/05/31.
//

//2156
import Foundation

var testCase = Int(readLine()!)!
var grape = [Int]()
var d = Array(repeating: Array(repeating: 0, count: 3), count: testCase)
for _ in 1...testCase{
    let input = Int(readLine()!)!
    grape.append(input)
}
var max1 = grape[0]
d[0][0] = grape[0]
for i in 1..<testCase{
    if i == 1 {
        d[i][0] = d[0][0] + grape[i]
        d[i][1] = grape[i]
    }
    if i == 2{
        d[i][0] = d[i-1][1] + grape[i]
        d[i][1] = max(d[i-2][0],d[i-2][1]) + grape[i]
    }
    if i >= 3{
        d[i][0] = d[i-1][1] + grape[i]
        d[i][1] = max(d[i-2][0],d[i-2][1],d[i-3][0],d[i-3][1]) + grape[i]
    }

    var temp = d[i][0] >= d[i][1] ? d[i][0] : d[i][1]
    if temp > max1 {
        max1 = temp
    }
}
print(max1)

