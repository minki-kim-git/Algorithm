//
//  BAEKJOON-10971.swift
//  
//
//  Created by 김민기 on 2022/06/22.
//
//10971
//w[i][j] -> i에서 j로 이동 하는데 드는 비용
//0이면 x
//(맨 마지막에 여행을 출발했던 도시로 돌아오는 것은 예외) -> n번만 더해주면됨
//가장 적은 비용을 들이는 외판원의 순회 여행 경로를 구하는 프로그램을 작성하시오.
//외판원 순회 문제 도시의 수가 10이하기 때문에 브루트포스로 풀이가능

import Foundation
var n = Int(readLine()!)!
var matrix = Array(repeating: Array(repeating: 0, count:0), count: n)
var minNum = 1000000000
var per = [Int]()
for i in 0..<n{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    matrix[i] = input
}
for i in 0..<n{
    per.append(i)
}
func ans(arr:[Int])->Int{
    var sum = 0
    for i in 0...n-2{
        let a = matrix[arr[i]][arr[i+1]] //[i][j]에 맞게끔 순열로 계산
        if a == 0 { //0이면 가지못하는경우 예외처리
            return -1
        }
        sum += a
    }
    let a = matrix[arr[n-1]][arr[0]] //원래의 도시로 돌아가는 경우
    if a == 0 {
        return -1
    }
    sum += a
    return sum
}
var temp = ans(arr: per)
if temp != -1 {
    minNum = temp
}
//모든순열
while true{
    var i = n - 1
    var j = n - 1
    while i > 0 && per[i] <= per[i-1]{
        i -= 1
    }
    if i <= 0{
        break
    }
    while per[j] <= per[i-1]{
        j -= 1
    }
    per.swapAt(j, i-1)

    j = n - 1
    while i < j{
        per.swapAt(j, i)
        i += 1
        j -= 1
    }
    let temp = ans(arr:per)
    if temp != -1 { //0이면 가지못하는경우 예외처리
    if temp < minNum{
        minNum = temp
    }
    }
}
print(minNum)
