//
//  main.swift
//  BAEKJOON-16194
//
//  Created by 김민기 on 2022/04/25.
//

import Foundation

var cardNum = Int(readLine()!)!
var input = readLine()!.split(separator:" ").map{Int(String($0))!}
//repeating 에 -1 사용가능
//min함수를 사용해서 초깃값을 0으로 초기화하면 계속 0이 나와서 문제 기준으로 나올수없는 큰값으로 초기화
var d = Array(repeating: 1000*10000, count: cardNum+1)
d[0] = 0
//min함수 사용을 해서 d[0]은 0으로 초기화
for i in 1...cardNum{
    for j in 1...i{
        d[i] = min(d[i],d[i-j]+input[j-1])
       // print(d[i-j]+input[j])
    }
}
print(d[cardNum])
