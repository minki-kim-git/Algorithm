//
//  main.swift
//  BAEKJOON-1978
//
//  Created by 김민기 on 2022/01/30.
//

import Foundation



//주어진 수 N개 중에서 소수가 몇 개인지 찾아서 출력하는 프로그램을 작성하시오.
//첫 줄에 수의 개수 N이 주어진다. N은 100이하이다. 다음으로 N개의 수가 주어지는데 수는 1,000 이하의 자연수이다.
//소수는 1과 자기자신만 나눠지는거

let n = Int(readLine()!)!
var count = n
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
for i in input {
    if i == 1 { //1은 소수가 아니라서 -1 밑에 fot문을 1부터 시작하면 다나누어 떨어져서 if로 따로 분리해줌
        count -= 1
    } else {
        for j in 2..<i { //1을 제외한 나머지 수는 자기자신까지 커질수잇도록
            if i % j == 0 { //자기 자신외에 다른수에 나누어떨어지면 -1
                count -= 1
                break
            }
        }
    }
}
print(count)
