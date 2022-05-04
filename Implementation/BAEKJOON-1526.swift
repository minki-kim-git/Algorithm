//
//  main.swift
//  BAEKJOON-1526
//
//  Created by 김민기 on 2022/03/01.
//

//4와 7로만 이루어진 수를 말한다.
//N이 주어졌을 때, N보다 작거나 같은 금민수 중 가장 큰 것을 출력하는 프로그램을 작성하시오.

import Foundation
var ans = Set<Int>()
var input = Int(readLine()!)!
for i in stride(from: input, through: 4, by: -1) {
    let a = String(i).filter{$0 == "4" || $0 == "7"} //4 또는 7을 포함하는 값을 Set에 추가
    ans.insert(Int(a) ?? 0 )
}
print(ans.max()!) //Set값중 제일 큰값을 출력
