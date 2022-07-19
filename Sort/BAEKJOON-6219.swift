//
//  BAEKJOON-6219.swift
//  
//
//  Created by 김민기 on 2022/07/19.
//

//6219
//A..B(A와 B 포함)내에서 숫자 D를 포함하는 소수의 개수를 구해보자.
import Foundation
var input = readLine()!.split(separator:" ").map{Int(String($0))!}

var a = input[0]
var b = input[1]
var d = input[2]
var bool = Array(repeating: false, count: b+1)
var count = 0

for i in 2...b{ //에라토스테네스의 체
    if bool[i] == false {
        if i >= a{
            let str = String(i).map{String($0)}
            if str.contains(String(d)) {
                count += 1
            }
        }
        for j in stride(from:i*i,through:b,by:i){
            bool[j] = true
        }
    }
}

print(count)

