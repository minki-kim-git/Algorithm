//
//  main.swift
//  BAEKJOON-1546
//
//  Created by 김민기 on 2022/01/19.
//

import Foundation

//시험 본 과목의 개수(N) 입력
//N개의 개수 만큼 띄어쓰기하려 입력
//이 점수중 최댓값을 골른뒤 모든점수를 점수 / 최댓값 x 100


var input = Double(readLine()!)!
var max:Double = -1
var a = readLine()!.split(separator: " ").map{Double($0)!}
max = a.max()!
//for i in a {
//    if i > max {
//        max = i
//    }
//}
var b = a.map{ $0 / max * 100 }
var c = b.reduce(0, +)
print(c/input)

