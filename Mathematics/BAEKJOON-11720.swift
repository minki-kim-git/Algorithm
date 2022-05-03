//
//  main.swift
//  BAEKJOON-11720
//
//  Created by 김민기 on 2022/01/20.
//

import Foundation

//첫째줄에 숫자의 개수
//다음줄에 숫자가 공백없이
//숫자다 1의 자리로 보고 다 더하기

var num = Int(readLine()!)!
var input = Array(readLine()!).map{Int(String($0))!}  //문자열을 공백없이 입력
var sum = input.reduce(0, +)
print(sum)
 
