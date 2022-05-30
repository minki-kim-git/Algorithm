//
//  BAEKJOON-1149.swift
//  
//
//  Created by 김민기 on 2022/05/30.
//

//1149
//마지막 색이 r 일때 g,b만 앞에 올 수 있음
//그래서 g,b 둘 중에 더 작은 값과 r 의 현재 값을 더해 줌
//j의 0이 r , 1이 g , 2가 b   로 생각하고 처리
//d[i][j] = min(d[i-1][j+1] , d[i-1][j+2]) + price[i][j]
import Foundation
var testCase = Int(readLine()!)!
var price = Array(repeating: Array(repeating: 0, count: 3), count: testCase) //가격을 받는 array
var d = Array(repeating: Array(repeating: 0, count: 3), count: testCase)
for i in 0..<testCase{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    price[i] = input
}
d[0] = price[0]
for i in 1..<testCase{
    for j in 0...2{
        if j == 0{
            d[i][j] = min(d[i-1][1],d[i-1][2]) + price[i][j]
        }
        if j == 1{
            d[i][j] = min(d[i-1][0],d[i-1][2]) + price[i][j]
        }
        if j == 2{
            d[i][j] = min(d[i-1][0],d[i-1][1]) + price[i][j]
        }
    }
}
print(d[testCase-1].min()!) //모든 grb로 나온 경우의 수의 값 중 제일 작은 값 출력
