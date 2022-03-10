//
//  main.swift
//  BAEKJOON-1026
//
//  Created by 김민기 on 2022/02/28.
//

//S = A[0] × B[0] + ... + A[N-1] × B[N-1]

//S의 값을 가장 작게 만들기 위해 A의 수를 재배열하자. 단, B에 있는 수는 재배열하면 안 된다.
//B의 큰수를 a의 작은수에 곱한다.
//b는 나두고 a만 재배열 함

import Foundation

var N = Int(readLine()!)!

var A = readLine()!.split(separator: " ").map{Int(String($0))!}
var B = readLine()!.split(separator: " ").map{Int(String($0))!}
var C = [Int]()
A = A.sorted()
C = B.sorted().reversed()
var minimum = 0
for i in 0..<N {
    minimum += A[i] * C[i]
}
print(minimum)

