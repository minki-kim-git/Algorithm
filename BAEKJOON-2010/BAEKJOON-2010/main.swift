//
//  main.swift
//  BAEKJOON-2010
//
//  Created by 김민기 on 2022/03/09.
//

import Foundation

var count = 0
for _ in 1...Int(readLine()!)!{
    let input = Int(readLine()!)!
    count += input - 1
}
print(count + 1)
