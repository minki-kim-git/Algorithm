//
//  main.swift
//  BAEKJOON-2609
//
//  Created by 김민기 on 2022/04/08.
//

//첫째 줄에는 입력으로 주어진 두 수의 최대공약수를, 둘째 줄에는 입력으로 주어진 두 수의 최소 공배수를 출력한다.

import Foundation

//유클리드 호재법

//while로 풀이
//func gcd(i:Int,j:Int) -> Int{
//    var a = i
//    var b = j
//b의 값이 0이 될 때까지
//a를 b로 , b를 a%b로 
//while b != 0 {
//    let r = a % b
//    a = b
//    b = r
//    }
//    return a
//}

//재귀함수 형태로 풀이
func gcd(i:Int,j:Int) -> Int {
    let a = i
    let b = j
    if b == 0 {
        return a
    }
    return gcd(i: b, j: a%b)
}

var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var a = input[0]
var b = input[1]
var max = gcd(i: a, j: b)
var min = 0
//최소공배수는 두 수를 곱한것에 최대공약수를 나눈값
min = a * b / max
print(max)
print(min)
