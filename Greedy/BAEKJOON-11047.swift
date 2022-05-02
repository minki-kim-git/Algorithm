//
//  main.swift
//  BAEKJOON-11047
//
//  Created by 김민기 on 2022/04/27.
//

//11047
//그리디 알고리즘
//import Foundation
//var testCase = readLine()!.split(separator: " ").map{Int(String($0))!}
//var coin = Array(repeating: 0, count: testCase[0])
//var count = 0
//for i in 0..<testCase[0] {
//    let input = Int(readLine()!)!
//    coin[i] = input
//}
//for i in stride(from: testCase[0]-1, through: 0, by: -1) {
//    var a = coin[i]
//    if coin[i] <= testCase[1] {
//        while coin[i] <= testCase[1]{
//            count += 1
//            testCase[1] -= a
//        }
//    }
//}
//print(count)
//while로 하니 시간이 많이 걸림

import Foundation
var testCase = readLine()!.split(separator: " ").map{Int(String($0))!}
var coin = Array(repeating: 0, count: testCase[0])
var count = 0
for i in 0..<testCase[0] {
    let input = Int(readLine()!)!
    coin[i] = input
}
//받은 코인의 값을 배열 뒤에서 부터 탐색
for i in stride(from: testCase[0]-1, through: 0, by: -1) {
    //입력값이 코인 값보다 작을때
    if coin[i] <= testCase[1] {
        //입력값과 코인값을 나눈 값이 즉 동전의 갯수
        count += testCase[1] / coin[i]
        //입력값을 코인 값으로 나누어 줬기 때문에 나머지로 계산
        testCase[1] = testCase[1] % coin[i]
    }
}
print(count)
