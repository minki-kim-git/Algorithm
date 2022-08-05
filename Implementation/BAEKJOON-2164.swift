//
//  BAEKJOON-2164.swift
//  
//
//  Created by 김민기 on 2022/07/02.
//

import Foundation
var input = Int(readLine()!)!
var arr = [Int]()
for i in 1...input{
    arr.append(i)
}
var index = 0
while arr.count > 1{
    arr.remove(at: 0)
    arr.append(arr[0])
    arr.remove(at: 0)
}
print(arr[0])

//시간초과

import Foundation
var input = Int(readLine()!)!
var arr = Array(1...n)
var index = 0
while arr.count > 1{
    arr.remove(at: 0)
    arr.append(arr[0])
    arr.remove(at: 0)
}
print(arr[0])
