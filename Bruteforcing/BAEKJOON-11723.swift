//
//  BAEKJOON-11723.swift
//  
//
//  Created by 김민기 on 2022/06/29.
//

import Foundation
var s = Array(repeating: 0, count: 21)
var testCase = Int(readLine()!)!

for _ in 1...testCase{
    let input = readLine()!.split(separator:" ").map{String($0)}
    if input[0] == "add" {
        if s[Int(input[1])!] == 0 {
            s[Int(input[1])!] = 1
        }
    }else if input[0] == "remove"{
        if s[Int(input[1])!] == 1 {
            s[Int(input[1])!] = 0
        }
    }else if input[0] == "check"{
        if s[Int(input[1])!] == 1 {
            print(1)
        } else {
            print(0)
        }
    }else if input[0] == "toggle"{
        if s[Int(input[1])!] == 0 {
            s[Int(input[1])!] = 1
        } else {
            s[Int(input[1])!] = 0
        }
    }else if input[0] == "all"{
        s = Array(repeating: 1, count: 21)
    }else if input[0] == "empty"{
        s = Array(repeating: 0, count: 21)
    }
    
}
//시간초과 -> 비트마스크로 풀이
//비트 마스킹으로 풀이
var testCase = Int(readLine()!)!
var bit = 0
for _ in 1...testCase{
    let input = readLine()!.split(separator:" ").map{String($0)}
    if input[0] == "add" {
        bit = bit | (1<<Int(input[1])!)
        print(bit)
    }else if input[0] == "remove"{
            bit = bit & ~(1<<Int(input[1])!)
        print(bit)
    }else if input[0] == "check"{
        if bit == 0 {
            print(0)
        } else {
        if (1<<Int(input[1])!) == bit & (1<<Int(input[1])!){
            print(1)
        } else {
            print(0)
        }
        }
    }else if input[0] == "toggle"{
        bit = bit ^ (1<<Int(input[1])!)
    }else if input[0] == "all"{
        bit = (1<<21) - 1
        print(bit)
    }else if input[0] == "empty"{
        bit = 0
    }

}
