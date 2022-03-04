//
//  main.swift
//  BAEKJOON-2675
//
//  Created by 김민기 on 2022/01/20.
//

import Foundation

var count = Int(readLine()!)!
for _ in 0..<count{
    let input = readLine()!.map{$0}
    for i in 2..<input.count {
        for _ in 0..<Int(String(input[0]))!{
        print(input[i],terminator:"")
        }
    }
    print()
}

