//
//  main.swift
//  BAEKJOON-1110
//
//  Created by 김민기 on 2022/01/21.
//

import Foundation

//더하기 사이클의 길이를 출력
//26
//2+6 = 8 -> 68
//6+8 = 14 -> 84
//8+4 = 12 -> 42
//4+2 = 6 -> 26
// 4번
//var i = 0
//var input = Int(readLine()!)!
//var sum = input
//while true {
//    let ten = sum/10
//    let one = sum%10
//    let add = ten + one
//    let new = one * 10
//    sum = add % 10 + new
//    i += 1
//    if sum == input {
//        print(i)
//        break
//    }
//}

//백준 10951 EOF 문제
while let input = readLine(){ //옵셔널 언랩안하고 입력이 있을 때만 실행을 함
    let sum = input.split(separator: " ").map{Int(String($0))!}
    print(sum.reduce(0, +))
}
