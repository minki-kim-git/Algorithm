//
//  main.swift
//  BAEKJOON-7568
//
//  Created by 김민기 on 2022/02/08.
//

import Foundation

//학생 N명의 몸무게와 키가 담긴 입력을 읽어서 각 사람의 덩치 등수를 계산하여 출력해야 한다.
//몸무게와 키가 무조건 더 작거나 큰사람은 순위를 매기고 얽혀 있으면 동률로 본다


var testCase = Int(readLine()!)!
var weight = [Int]()
var height = [Int]()
var rank = 1
var ranking = [Int]()
for _ in 0..<testCase{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    height.append(input[1])
    weight.append(input[0])
}
for i in 0..<testCase{
    for j in 0..<testCase{
        if height[i] < height[j] && weight[i] < weight[j]{
            //무게와 키를 비교하여 두게다 작은 경우 +1
            rank += 1
        }
    }
    ranking.append(rank) //rank값을 배열로 추가
    rank = 1
}
for i in 0..<testCase{
    print(ranking[i],terminator: " ")
}
print()
