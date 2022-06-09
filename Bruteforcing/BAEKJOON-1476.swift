//
//  BAEKJOON-1476.swift
//  
//
//  Created by 김민기 on 2022/06/09.
//

import Foundation

//1476
//총 나올수 있는 경우의 수는 15*28*19 인 7980이 나온다.
var input = readLine()!.split(separator:" ").map{Int(String($0))!}
var count = 0
var e = 0
var s = 0
var m = 0
while true{
    if e == 16{ //16이상의 값이 나올수 없어서 1로변경
        e = 1
    }
    if s == 29{
        s = 1
    }
    if m == 20{
        m = 1
    }
    if e == input[0] && s == input[1] && m == input[2]{
        break
    }
    count += 1
    e += 1
    s += 1
    m += 1
}
print(count)
