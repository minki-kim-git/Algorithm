//
//  main.swift
//  BAEKJOON-17087
//
//  Created by 김민기 on 2022/04/17.
//

//17087
//수빈이는 동생 N명과 숨바꼭질을 하고 있다. 수빈이는 현재 점 S에 있고, 동생은 A1, A2, ..., AN에 있다.
//수빈이는 걸어서 이동을 할 수 있다. 수빈이의 위치가 X일때 걷는다면 1초 후에 X+D나 X-D로 이동할 수 있다. 수빈이의 위치가 동생이 있는 위치와 같으면, 동생을 찾았다고 한다.
//모든 동생을 찾기위해 D의 값을 정하려고 한다. 가능한 D의 최댓값을 구해보자.
//ex) 1 3
//    19
//현재 위치가 3이고 동생의 위치가 19일때 D는(|동생위치-현재위치|) 16 , 8 , 4 , 2 , 1 이될수있고
//최댓값은 즉 , 동생들이 n명이면 n 명의 최대공약수(GCD)를 구하면된다.

import Foundation
//유클리드 호재법
func gcd(a:Int,b:Int) -> Int{
    if b == 0 {
        return a
    }
    return gcd(a: b, b: a % b)
}
//N,S
var testCase = readLine()!.split(separator: " ").map{Int(String($0))!}
//동생들의 위치
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var max = 0
for i in input{
    var minus = 0
//    if i < testCase[1]{
//        minus = testCase[1] - i
//    } else {
//        minus = i - testCase[1]
//    }
    minus = i - testCase[1]
    minus = abs(minus) //절대값함수
    if max != 0 { //이후 입력은 이전 입력값과 gcd를 계산
        max = gcd(a: max, b: minus)
    } else { //처음 포문을 실행할 때는 현재위치와 동생의 위치의 차이가 최대값
        max = minus
    }
}
print(max)
