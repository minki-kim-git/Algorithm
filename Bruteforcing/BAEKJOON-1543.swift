//
//  BAEKJOON-1543.swift
//  
//
//  Created by 김민기 on 2022/05/14.

// 단어가 최대 몇 번 중복되지 않게 등장하는지 구하는 프로그램을 작성하시오.

import Foundation
var text = readLine()!.map{String($0)}
var input = readLine()!.map{String($0)}
var count = 0
var i = 0
while i <= text.count-input.count{ //입력값의 크기만큼 탐색해 나가기 때문에 빼주기 , <= 입력이 한개인 경우도 있다
    var a = 0 //중복이 있는지 없는지 구분
    for j in 0..<input.count{
        if text[i+j] != input[j]{
            a += 1
            break //중복이 없다면 탈출
        }
    }
    if a == 0 { //중복이 된 경우는 i의 값을 입력값의 크기 만큼 늘려줘야지 이미 찾은 문자를 탐색하지 않는다.
        count += 1
        i += input.count
    } else {
    i += 1
    }
}
print(count)
