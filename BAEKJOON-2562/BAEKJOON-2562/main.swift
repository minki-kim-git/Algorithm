//
//  main.swift
//  BAEKJOON-2562
//
//  Created by 김민기 on 2022/01/17.
//

import Foundation

var i = 0
var num = [Int]()
while i<9 {
    let input = Int(readLine()!)!
    num.append(input)
    
    i += 1
}
print(num.max()!)
let b = num.indices
let a = b.filter{num[$0] == num.max()!}
print(a[0] + 1)
