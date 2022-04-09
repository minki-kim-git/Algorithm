//
//  main.swift
//  BAEKJOON-1934
//
//  Created by 김민기 on 2022/04/09.
//


//첫째 줄부터 T개의 줄에 A와 B의 최소공배수를 입력받은 순서대로 한 줄에 하나씩 출력한다.
//최소공배수는 최대공약수 gcd를 이용하여 풀 수 있다.
//최소공배수 = a * b / gcd
//최대공약수는 유클리드 호재법을 통하여 구함

import Foundation
func gcd(a:Int,b:Int)->Int{
    var a = a
    var b = b
    var temp = 0
    while b != 0 {
        temp = b
        b = a % b
        a = temp
    }
    return a
}
for _ in 1...Int(readLine()!)!{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let Gcd = gcd(a: input[0], b: input[1])
    print(input[0] * input[1] / Gcd)
}
