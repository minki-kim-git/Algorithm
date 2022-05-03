//
//  main.swift
//  BAEKJOON-2775
//
//  Created by 김민기 on 2022/01/29.
//

//이 아파트에 거주를 하려면 조건이 있는데, “a층의 b호에 살려면 자신의 아래(a-1)층의 1호부터 b호까지 사람들의 수의 합만큼 사람들을 데려와 살아야 한다” 는 계약 조항을 꼭 지키고 들어와야 한다.

//아파트에 비어있는 집은 없고 모든 거주민들이 이 계약 조건을 지키고 왔다고 가정했을 때, 주어지는 양의 정수 k와 n에 대해 k층에 n호에는 몇 명이 살고 있는지 출력하라. 단, 아파트에는 0층부터 있고 각층에는 1호부터 있으며, 0층의 i호에는 i명이 산다.

//첫 번째 줄에 Test case의 수 T가 주어진다. 그리고 각각의 케이스마다 입력으로 첫 번째 줄에 정수 k, 두 번째 줄에 정수 n이 주어진다


import Foundation
var sum = 0
var result = [Int]()
var TestCase = Int(readLine()!)!
for _ in 0..<TestCase{
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
        for i in 1...n{
            result.append(i)
    }
    var sd = Array(repeating: 0, count: result.count)
    for _ in 0..<k{
        for j in 0..<result.count{
            for i in 0...j{
                sum += result[i] //i호 까지 만큼 더하기
            }
            sd[j] = sum //더한 sum값을 각각 맞는 호로 result가 아닌 sd로 넘겨주는 이유는 위의 포문에서 result의 값이 바뀌기 때문에 새로운 배열에 추가해줌
            sum = 0
        }
            result = sd //sd의 값을 result로 매칭하여 두번째 포문에서 result의 값을 바꿔줌
    }
    print(result.last!)
    result.removeAll() //n개의 테스트 케이스 입력을 하기 때문에 배열 초기화
}

