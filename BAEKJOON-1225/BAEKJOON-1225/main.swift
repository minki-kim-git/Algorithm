//
//  main.swift
//  BAEKJOON-1225
//
//  Created by 김민기 on 2022/02/27.
//

// (A가 n자리, B가 m자리 수라면 총 가능한 조합은 n×m개)
//1×3 + 1×4 + 2×3 + 2×4 + 1×3 + 1×4 = 28

import Foundation

var input = readLine()!.split(separator: " ").map{String($0)}
var a = input[0].map{Int(String($0))!}
var b = input[1].map{Int(String($0))!}
var ans = 0
for i in a {
    for j in b {
        ans += i*j
    }
}
print(ans)
