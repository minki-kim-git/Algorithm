//
//  BAEKJOON-1932.swift
//  
//
//  Created by 김민기 on 2022/06/03.
//

import Foundation

var testCase = Int(readLine()!)!
var triangle = Array(repeating: Array(repeating: 0, count: 0), count: testCase)
var d = Array(repeating: Array(repeating: -1, count: testCase), count: testCase)
for q in 0..<testCase{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    triangle[q] = input
    
}
d[0][0] = triangle[0][0]

for i in 1..<testCase{
    for j in 0...i{
        var a = 0
        var b = 0
        if j >= 1{
        if d[i-1][j-1] != -1 {
            a = d[i-1][j-1] + triangle[i][j]
        }
        }
        if d[i-1][j] != -1 {
            b = d[i-1][j] + triangle[i][j]
        }
        d[i][j] = a >= b ? a : b
    }
}
print(d[testCase-1].max()!)
