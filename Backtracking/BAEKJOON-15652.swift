//
//  BAEKJOON-15652.swift
//  
//
//  Created by 김민기 on 2022/06/17.
//

//1부터 N까지 자연수 중에서 M개를 고른 수열
//같은 수를 여러 번 골라도 된다.
//고른 수열은 비내림차순이어야 한다.

import Foundation
func a(num:Int,index:Int,n:Int,m:Int){
    if index == m {
        for i in 0..<m{
            print(ans[i],terminator:" ")
        }
        print()
        return
    }
    if num > n{
        return
    }
    ans[index] = num
    a(num: num, index: index+1, n: n, m: m) //중복을 포함
    ans[index] = 0
    a(num: num+1, index: index, n: n, m: m)
}
var input = readLine()!.split(separator:" ").map{Int(String($0))!}
var ans = Array(repeating: 0, count: 10)
a(num: 1, index: 0, n: input[0], m: input[1])

