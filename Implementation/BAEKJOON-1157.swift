//
//  main.swift
//  BAEKJOON-1157
//
//  Created by 김민기 on 2022/01/20.
//

import Foundation

var input = Array(readLine()!).map{$0}
var a = input.map{ $0.lowercased() } //문자열 소문자로
var set = Set<String>() //문자열 중복없애려고 Array -> Set

for i in a{
    
    set.insert(i)
}

var b = set.map{$0} //인덱스 순서가 필요해서 Set -> Array
var c = Array(repeating: 0, count: b.count) //개수카운터 하려고 Array선언
for i in a {
    for j in 0..<b.count{
        if i == b[j] {
            c[j] += 1
        }
    }
}
var max = c.max()!
var count = 0
var ind = 0

for (index,value) in c.enumerated() { //c배열의 인덱스 번호와 최대값 중복 확인
        if value == max {
            count += 1
            if count > 1 {
                print("?")
                break
            }
            if count == 1 {
                ind = index
            }
    }
}
if count == 1 { //최대값이 한개 일떄 출력
    print(b[ind].uppercased())
}
//맞긴하지만 이 방법은 수정할게 너무 많다.....
