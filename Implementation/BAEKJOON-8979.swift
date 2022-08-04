//
//  BAEKJOON-8979.swift
//  
//
//  Created by 김민기 on 2022/08/04.
//


//8979
//우선 입력받고 1등부터 시작하고 등수를 알고싶은 국가로 부터 다른 국가를 비교
//더 많이 받은애가 있으면 1 플러스 나머지는 플러스 x (같거나 적은경우)
import Foundation
var n = readLine()!.split(separator:" ").map{Int(String($0))!}

var k = n[1] //알고 싶은 국가
var ranking = 1

var arr = [[Int]]()
var karr = [Int]()
for _ in 1...n[0]{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    if input[0] != n[1]{
        arr.append(input)
    }else {
        karr.append(contentsOf:input)
    }
    
}
//karr인 경우를 빼줘야해서 1빼줌
for i in 0..<n[0]-1{
    if karr[1] < arr[i][1]{
        ranking += 1
    } else if karr[1] == arr[i][1] {
        if karr[2] < arr[i][2] {
            ranking += 1
        } else if karr[2] == arr[i][2] {
            if karr[3] < arr[i][3] {
                ranking += 1
            }
        }
    }
}
print(ranking)
