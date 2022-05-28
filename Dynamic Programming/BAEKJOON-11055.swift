//
//  BAEKJOON-11055.swift
//  
//
//  Created by 김민기 on 2022/05/28.
//
//첫째 줄에 수열 A의 합이 가장 큰 증가 부분 수열의 합을 출력한다.

import Foundation

var testCase = Int(readLine()!)!
var seq = readLine()!.split(separator:" ").map{Int(String($0))!}
var d = Array(repeating:0,count:testCase)
d[0] = seq[0]
var ans = d[0]

for i in 1..<testCase{
    var max = seq[i]
    var temp = 0
    for j in stride(from:i-1,through:0,by:-1){
        if seq[j] < seq[i]{
             temp = d[j] + seq[i] //이전수와 현재 값  더해 주기
            if temp > max {
                max = temp
            }
        }
    }
    d[i] = max
    if ans < max {
        ans = max
    }
    
}
print(ans)
