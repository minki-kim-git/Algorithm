//
//  BAEKJOON-13398.swift
//  
//
//  Created by 김민기 on 2022/06/07.
//

import Foundation
var n = Int(readLine()!)!
var input = readLine()!.split(separator:" ").map{Int(String($0))!}
var d = Array(repeating: 0, count: n)
var d2 = Array(repeating: 0, count: n)
d[0] = input[0]
d2[n-1] = input[n-1]
for i in 1..<n{
    let temp = input[i] + d[i-1]
    if temp < input[i]{
        d[i] = input[i]
    }else {
        d[i] = temp
    }
}
for j in stride(from: n-2, through: 0, by: -1){
    let temp = input[j] + d2[j+1]
    if temp < input[j]{
        d2[j] = input[j]
    } else{
        d2[j] = temp
    }
}
var ans = d.max()!
if n > 2{
    for k in 1...n-2{
        if ans < d[k-1] + d2[k+1]{
            ans = d[k-1] + d2[k+1]
        }
    }
} else if n == 1{
    ans = input[0]
} else {
    ans = max(input[0],input[1],input[0]+input[1],ans)
}
print(ans)

