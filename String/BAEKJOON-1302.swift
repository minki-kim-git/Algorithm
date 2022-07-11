//
//  BAEKJOON-1302.swift
//  
//
//  Created by 김민기 on 2022/07/11.
//

import Foundation
//1302
//오늘 하루 동안 팔린 책의 제목이 입력으로 들어왔을 때, 가장 많이 팔린 책의 제목을 출력하는 프로그램을 작성하시오.

var n = Int(readLine()!)!
var count = [Int]()
var str = [String]()
var ans = [String]()

for _ in 1...n{
    let input = readLine()!
    if str.contains(input){ //str에 포함되어 있으면 count에 1추가
        count[str.firstIndex(of: input)!] += 1
    } else { //포함되어있지 않으면 str,count에 추가
        str.append(input)
        count.append(1)
    }
}

//가장 많이 팔린 책의 개수가 여러개일때 처리
for i in 0..<count.count{
    if count[i] == count.max()!{
        ans.append(str[i])
    }
}
ans.sort()
print(ans[0])
