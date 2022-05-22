//
//  BAEKJOON-14002.swift
//  
//
//  Created by 김민기 on 2022/05/22.
//
//14002
//첫째 줄에 수열 A의 가장 긴 증가하는 부분 수열의 길이를 출력한다.
//둘째 줄에는 가장 긴 증가하는 부분 수열을 출력한다. 그러한 수열이 여러가지인 경우 아무거나 출력한다.
import Foundation
var size = Int(readLine()!)!
var seq = readLine()!.split(separator:" ").map{Int(String($0))!}
var count = Array(repeating:1,count:size)
var d = Array(repeating: Array(repeating: 0, count: 0), count: size)
var maxSeq = [Int]()
var maxCount = 1
var a = 1
var indexnum = 0 //최대값이 있는 위치
for i in 0..<size{
    var max = 1
    var temp = 0
    maxSeq.append(seq[i])
    for j in stride(from: i-1, through: 0, by: -1){
        if seq[i] > seq[j]{
            temp = count[j] + 1
        }
        if max < temp{
            max = temp
            maxSeq.removeAll()
            maxSeq.append(seq[i])
            maxSeq.append(contentsOf:d[j])
        }
    }
    count[i] = max
    d[i].append(contentsOf:maxSeq) //메모이제이션
    maxSeq.removeAll()
//    if max > maxCount{
//        maxCount = max
//    }
    if a <= d[i].count{
        a = d[i].count
        indexnum = i
        maxCount = d[i].count
    }
}
print(maxCount)
for i in stride(from: maxCount-1, through: 0, by: -1){
    print(d[indexnum][i],terminator:" ")
}
