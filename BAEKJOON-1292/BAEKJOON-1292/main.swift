//
//  main.swift
//  BAEKJOON-1292
//
//  Created by 김민기 on 2022/03/20.
//

//1 2 2 3 3 3 4 4 4 4 5 .. 이러한 수열을 만들고 어느 일정한 구간을 주면 그 구간의 합을 구하는 것이다.
import Foundation

var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var sum = 0
var a = input[0]
var b = input[1]
var arr = [Int]()
for i in 1...50{
    for _ in 1...i{
        arr.append(i*1)
    }
    if arr.count >= b{ //arr의 개수가 b 보다 커질때까지 arr에 추가
        break
    }
}
for j in a-1...b-1{
    sum += arr[j]
}
print(sum)

