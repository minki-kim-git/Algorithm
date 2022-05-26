//
//  BAEKJOON-11722.swift
//  
//
//  Created by 김민기 on 2022/05/27.
//

// 가장 긴 감소하는 부분 수열을 구하는 프로그램을 작성하시오.

//가장 긴 증가하는 부분 수열의 부호를 바꾸면됨
import Foundation

var testCase = Int(readLine()!)!
var seq = readLine()!.split(separator:" ").map{Int(String($0))!}

var d = Array(repeating:1,count:testCase)
d[0] = 1
for i in 1..<testCase{
    var temp = 0
    var max = 1
    for j in 0..<i{
        if seq[i] < seq[j] {
            temp = d[j] + 1
            if temp > max{
                max = temp
            }
        }
    }
    d[i] = max
}
print(d.max()!)
