//
//  BAEKJOON-16916.swift
//  
//
//  Created by 김민기 on 2022/07/14.
//

import Foundation
//16916
//문자열 S의 부분 문자열이란, 문자열의 연속된 일부를 의미한다.
//문자열 S와 P가 주어졌을 때, P가 S의 부분 문자열인지 아닌지 알아보자.
//P가 S의 부분 문자열이면 1, 아니면 0을 출력한다.

var s = readLine()!.map{String($0)}
var p = readLine()!.map{String($0)}
var ans = -1
for i in 0...s.count-p.count{
    if s[i] == p[0]{
        for j in 0..<p.count{
            if s[i+j] == p[j]{
                ans = 1
            }
            else {
                ans = 0
                break
            }
        }
    }
    if ans == 1 {
        break
    }
}
ans == 1 ? print(1) : print(0)


