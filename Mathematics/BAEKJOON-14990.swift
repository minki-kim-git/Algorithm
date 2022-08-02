//
//  BAEKJOON-14990.swift
//  
//
//  Created by 김민기 on 2022/08/02.
//

import Foundation
//최대 공약수를 유클리드 호재법으로 구한뒤 두 수를 최대공약수로 나눠주면 정답
func gcd(i:Int,j:Int) -> Int {
    let a = i
    let b = j
    if b == 0 {
        return a
    }
    return gcd(i: b, j: a%b)
}
//문자열을 ":" 를 기준으로 나눠줌
var input = readLine()!.split(separator: ":").map{Int(String($0))!}
var a = input[0]
var b = input[1]
var max = gcd(i: a, j: b)
print("\(a/max):\(b/max)")
