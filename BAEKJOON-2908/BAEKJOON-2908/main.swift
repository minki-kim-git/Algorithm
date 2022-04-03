//
//  main.swift
//  BAEKJOON-2908
//
//  Created by 김민기 on 2022/04/03.
//

//백준 - 2908
//734와 893을 칠판에 적었다면, 상수는 이 수를 437과 398로 읽는다. 따라서, 상수는 두 수중 큰 수인 437을 큰 수라고 말할 것이다.
import Foundation

var input = readLine()!.split(separator : " ").map{$0}
var num1 = input[0].map{Int(String($0))!}
var num2 = input[1].map{$0}
num1 = num1.reversed()
num2 = num2.reversed()
var a :String = ""
var b :String = ""
for i in num2 {
    a += String(i)
}
for i in num1 {
    b += String(i)
}
a > b ? print(a) : print(b)
