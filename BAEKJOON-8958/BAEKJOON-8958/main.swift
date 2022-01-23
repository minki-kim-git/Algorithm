//
//  main.swift
//  BAEKJOON-8958
//
//  Created by 김민기 on 2022/01/19.
//

import Foundation

//일단 정수하나 받음 그 수만큼 테스트 케이스
// O는 1로 시작하고 계속 이어서 나올수록 1씩 증가 X가 나오면 0으로 초기화하며 이 값을 다 더함
//더한 값을 출력

var count = Int(readLine()!)!

for _ in 0..<count{
    let input = readLine()!
    let str = input.map{$0}
    var sum = 0
    var result = 0
    
    for i in str{
        if i == "O" {
            sum += 1
            result += sum
        }
        else if i == "X" {
            sum = 0
        }
    }
    print(result)
}


