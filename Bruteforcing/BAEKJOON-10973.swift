//
//  BAEKJOON-10973.swift
//  
//
//  Created by 김민기 on 2022/06/19.
//
//모든 순열 출력문제
import Foundation
var input = Int(readLine()!)!
var permutation = Array(repeating:1,count:input)
for i in 1..<input{
    permutation[i] = i + 1
}
for i in 0..<input{ //처음 순열
    print(permutation[i],terminator:" ")
}
print()
while true {
     var i = input - 1
    var j = input - 1
    while i > 0 && permutation[i] <= permutation[i-1]{
        i -= 1
    }
    if i <= 0 {
        break
    }
    while permutation[j] <= permutation[i-1] {
        j -= 1
    }
    permutation.swapAt(i-1, j)
    j = input - 1
    while i < j{
        permutation.swapAt(i, j)
        i += 1
        j -= 1
    }
    for k in 0..<input{
        print(permutation[k],terminator: " ")
    }
    print()
}

