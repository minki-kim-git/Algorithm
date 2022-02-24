//
//  main.swift
//  BAEKJOON-1427
//
//  Created by 김민기 on 2022/02/24.
//

//첫째 줄에 자리수를 내림차순으로 정렬한 수를 출력한다.
//내장함수인 sorted,reversed를 사용

import Foundation

var input = Int(readLine()!)!
var sort = String(input).map{Int(String($0))!}
sort = (sort.sorted()).reversed()
for i in 0..<sort.count{
    print(sort[i],terminator: "")
}

