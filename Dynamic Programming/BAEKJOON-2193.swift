//
//  BAEKJOON-2193.swift
//  
//
//  Created by 김민기 on 2022/05/20.
//



//연속의 문제는 2차원 배열로 풀이
//2193
//1. 0으로 시작 X
//2. 1이 두번 연속 X
//3. 0은 두번 연속 O
import Foundation
var input = Int(readLine()!)!
var d = Array(repeating:Array(repeating:0,count:2),count: 91)
d[1][1] = 1
if input > 1 {
for i in 2...input{
    for j in 0...1{
        if j == 0 { //마지막 수가 0일때 앞에는 0,1이 둘 다 올 수 있다.
            d[i][j] = d[i-1][j] + d[i-1][1]
        }
        if j == 1{ //1일때는 앞에 0만 올 수 있다
            d[i][j] = d[i-1][0]
        }
    }
}
}
print(d[input][0]+d[input][1])

//연속의 문제는 2차원 배열로 풀이하나 이 문제는 1차로도 가능
//1차 배열로 풀이
//마지막 수가 1이면 그전에는 반드시 0이 와야됨 -> 01 을 하나의 짝으로 맞춤
//d[i] = d[i-2] -> 01 을 하나로 보기 때문에

//마지막 수가 0이면 그전에는 1 또는 0이 올 수 있음
//d[i] = d[i-1] -> 마지막 수가 0이면 1,0 다 가능해서
//var input = Int(readLine()!)!
//var d = Array(repeating:0,count:91)
//d[1] = 1
//if input > 1{
//for i in 2...input{
//    d[i] = d[i-1] + d[i-2]
//}
//}
//print(d[input])
