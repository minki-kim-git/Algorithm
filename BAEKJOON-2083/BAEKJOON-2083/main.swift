//
//  main.swift
//  BAEKJOON-2083
//
//  Created by 김민기 on 2022/03/26.
//

//나이가 17세보다 많거나, 몸무게가 80kg 이상이면 성인부이다. 그 밖에는 모두 청소년부이다.
//각 줄은 이름과 두 자연수로 이루어진다. 두 자연수는 순서대로 나이와 몸무게를 나타낸다. 입력의 마지막 줄은 # 0 0 이다. 이 입력은 처리하지 않는다.
import Foundation

while true {
let input = readLine()!.split(separator: " ").map{String($0)}
//input이 배열의 형태로 입력되기 때문에 배열과 비교
    if input == ["#","0","0"] {
            break
        }
//특정 조건을 제외하면 전부 주니어기 때문에 시니어부터 비교
    if Int(input[1])! > 17 || Int(input[2])! >= 80{
        print(input[0],"Senior")
    } else {
        print(input[0],"Junior")
    }

}

