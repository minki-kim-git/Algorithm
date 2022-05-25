//
//  BAEKJOON-15988.swift
//  
//
//  Created by 김민기 on 2022/05/25.
//


//15988
//정수 4를 1, 2, 3의 합으로 나타내는 방법은 총 7가지가 있다. 합을 나타낼 때는 수를 1개 이상 사용해야 한다.
//1,000,000,009로 나눈 나머지를 출력한다.
//1,000,000,009는 int의 범위를 벗어나는 오버플로를 막기위해 계산할때 마다 해주기
import Foundation
var testCase = Int(readLine()!)!
var input = [Int]()
for _ in 1...testCase{
    let a = Int(readLine()!)!
    input.append(a)
}
var max = input.max()!
var d = Array(repeating: 0, count: max+1)
d[0] = 1
for i in 1...max{
    if i >= 1{
        d[i] += d[i-1] % 1000000009
    }
    if i >= 2{
        d[i] += d[i-2] % 1000000009
    }
    if i >= 3{
        d[i] += d[i-3] % 1000000009
    }
}
for j in input{
    print(d[j] % 1000000009)
}
