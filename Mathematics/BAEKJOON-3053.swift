//
//  main.swift
//  BAEKJOON-3053
//
//  Created by 김민기 on 2022/02/05.
//


import Foundation

var input = Float(readLine()!)!
var pi = String(format: "%.6f", Float(Double.pi) * input * input )
var taxi = String(format: "%.6f", 2.0 * input * input ) // import Foundation잇어야함
print(pi)
print(taxi)

