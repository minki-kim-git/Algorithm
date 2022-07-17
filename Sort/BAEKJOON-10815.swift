//
//  BAEKJOON-10815.swift
//  
//
//  Created by 김민기 on 2022/07/17.
//

import Foundation
//10815
//숫자 카드는 정수 하나가 적혀져 있는 카드이다. 상근이는 숫자 카드 N개를 가지고 있다. 정수 M개가 주어졌을 때, 이 수가 적혀있는 숫자 카드를 상근이가 가지고 있는지 아닌지를 구하는 프로그램을 작성하시오.
//var n = Int(readLine()!)!
//var nCount = readLine()!.split(separator: " ").map{Int(String($0))!}
//var m = Int(readLine()!)!
//var mCount = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//for i in 0..<m{
//    if nCount.contains(mCount[i]){
//        print(1,terminator:" ")
//    } else {
//        print(0,terminator:" ")
//    }
//}
//시간초과

var n = Int(readLine()!)!
var nCount = readLine()!.split(separator: " ").map{Int(String($0))!}
var m = Int(readLine()!)!
var mCount = readLine()!.split(separator: " ").map{Int(String($0))!}
var p = Array(repeating: 0, count: 10000001) //양수
var a = Array(repeating: 0, count: 10000001) //음수
for i in 0..<n{
    var num = nCount[i]
    if num >= 0 {
        p[num] += 1
    } else {
        num = num * -1 //음수는 양수로
        a[num] += 1
    }
}

for j in 0..<m{
    var num = mCount[j]
    if num >= 0 {
        if p[num] == 1{
            print(1,terminator: " ")
        } else {
            print(0,terminator: " ")
        }
    } else {
        num = num * -1 //음수는 양수로
        if a[num] == 1{
            print(1,terminator: " ")
        } else {
            print(0,terminator: " ")
        }
    }
}

