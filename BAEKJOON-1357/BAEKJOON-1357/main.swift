//
//  main.swift
//  BAEKJOON-1357
//
//  Created by 김민기 on 2022/02/28.
//

//두 양의 정수 X와 Y가 주어졌을 때, Rev(Rev(X) + Rev(Y))를 구하는 프로그램을 작성하시오.

//문자열로 나누어서 반대로 뒤집고 int형으로 변환하여 계산

import Foundation

var input = readLine()!.split(separator:" ").map{String($0)}
var a = Int(String(input[0].map{$0}.reversed()))!
var b = Int(String(input[1].map{$0}.reversed()))!
var c = String(a+b)
print(Int(String(c.map{$0}.reversed()))!)

