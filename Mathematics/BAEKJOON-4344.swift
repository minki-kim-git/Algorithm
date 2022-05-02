//
//  main.swift
//  BAEKJOON-4344
//
//  Created by 김민기 on 2022/01/19.
//

import Foundation

// 테스트 케이스의 개수 정수로 한개 받기
// 각 테스트 케이스마다 학생수를 맨처음 적고 이어서 학생수에 맞는 점수 적기
//
//각 테스트 케이스마다 평균을 넘는 학생들의 비율을 소수 셋째자리 까지 반올림하여 출력


var input = Int(readLine()!)!
var sum :Double = 0
var result : Double = 0
var count:Double = 0
var stdnum = [Double]()
var dap :Double = 0
for _ in 0..<input{
    stdnum = readLine()!.split(separator: " ").map{(Double($0)!)}
    sum = 0
    count = 0
    result = 0
    for j in 1...Int(stdnum[0]){
     sum += stdnum[j]
    }
    result = sum / stdnum[0]
    for j in 1...Int(stdnum[0]){
        if stdnum[j] > result {
            count += 1
        }
   
    }
    let w =  Double(count)/Double(stdnum[0])*100  
    let a = String(format: "%.3f",w )
    print("\(a)%")
}

