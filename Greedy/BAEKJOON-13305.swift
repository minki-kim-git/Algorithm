//
//  main.swift
//  BAEKJOON-13305
//
//  Created by 김민기 on 2022/04/29.
//

//13305
//그리디 알고리즘
//더 작은 값이 나올 때 까지 작은 값으로 계속 채운다
import Foundation
var citycount = Int(readLine()!)!
var distance = readLine()!.split(separator:" ").map{Int(String($0))!}
var cost = readLine()!.split(separator:" ").map{Int(String($0))!}
var totalSum = 0
var min = 1000000001
for i in 0...citycount-2{
    if cost[i] < min { //cost의 비용이 들어올수 있는 가장 큰 값과 비교하여 작은 값을 지정
        min = cost[i]
        totalSum += cost[i] * distance[i]
    } else { //기존의 min 보다 작은 값이 나오지 않는 다면 min 값으로 계속 계산
        totalSum += min * distance[i]
        }
}
print(totalSum)
