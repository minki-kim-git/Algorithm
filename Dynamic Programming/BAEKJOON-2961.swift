//
//  BAEKJOON-2961.swift
//  
//
//  Created by 김민기 on 2022/06/28.
//


import Foundation

var n = Int(readLine()!)!
var arr = Array(repeating:Array(repeating:0,count:0),count:n)
var minNum = 1000000000
for i in 0..<n{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    arr[i].append(contentsOf:input)
}
for i in 0..<(1<<n){
    
    var acidity = 1
    var sweet = 0
    //비트마스크로 전체 경우의 수 완전탐색
    for j in 0..<n{
        if i&(1<<j) == (1<<j){
            acidity *= arr[j][0]
            sweet += arr[j][1]
        }
    }
    if sweet > 0 && acidity > 0{
    let temp = acidity > sweet ? acidity - sweet : sweet - acidity
    if temp < minNum {
        minNum = temp
    }
    }
}
print(minNum)
