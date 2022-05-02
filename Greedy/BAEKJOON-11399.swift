//
//  main.swift
//  BAEKJOON-11399
//
//  Created by 김민기 on 2022/04/28.
//

//11399
import Foundation
var pernum = Int(readLine()!)!
var input = readLine()!.split(separator:" ").map{Int(String($0))!}
input.sort() //정렬만 해주면 간단히 해결
var a = 0
var count = 0
for i in 0...pernum-1{
    count = count + input[i]
    a += count //시간의 합
}
print(a)
