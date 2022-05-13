//
//  BAEKJOON-2217.swift
//  
//
//  Created by 김민기 on 2022/05/13.
//

import Foundation
// 모든 로프를 사용해야 할 필요는 없으며, 임의로 몇 개의 로프를 골라서 사용해도 된다.
//w/k
var testCase = Int(readLine()!)!
var loop = [Int]()
for _ in 1...testCase{
    let input = Int(readLine()!)!
    loop.append(input)
}
loop.sort()
loop.reverse()
//최대값이 제일 처음 출력되어야함
var kg = 0
var max = 0
for i in 0..<loop.count{
    kg += loop[i]
    var a = kg / (i+1)
    //5 | 1 1 1 3 1 1 의 경우를 구하기 위해
    if a >= loop[i] { //로프의 개수와 총 무게 계산
        a = loop[i]
        a = a * (i+1) 
    }
    if max < a {
        max = a
    }
}
print(max)
