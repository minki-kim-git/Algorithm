//
//  BAEKJOON-11656.swift
//  
//
//  Created by 김민기 on 2022/07/07.
//

import Foundation
//11656
//문자열 S가 주어졌을 때, 모든 접미사를 사전순으로 정렬한 다음 출력하는 프로그램을 작성하시오.
var s = readLine()!.map{String($0)}
var ans = [String]()
var word = ""
//문자열을 뒤에서 부터 한개 씩 추가해가면서 접미사를 만들어감
for i in stride(from: s.count-1 , through: 0, by: -1){
    word = s[i] + word
    ans.append(word)
}
//사전순으로 정렬
ans.sort()
for j in ans {
    print(j)
}
