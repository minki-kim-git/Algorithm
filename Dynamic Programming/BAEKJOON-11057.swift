//
//  BAEKJOON-11057.swift
//  
//
//  Created by 김민기 on 2022/05/26.
//

//인접한 수가 같아도 오름차순으로 친다.
//수의 길이 N이 주어졌을 때, 오르막 수의 개수를 구하는 프로그램을 작성하시오. 수는 0으로 시작할 수 있다.
//첫째 줄에 길이가 N인 오르막 수의 개수를 10,007로 나눈 나머지를 출력한다.

import Foundation

var input = Int(readLine()!)!

var d = Array(repeating:Array(repeating:0,count:10),count:input+1)
for i in 0...9{
    d[1][i] = 1
}
if input >= 2{
    for i in 2...input{ //글자수
        for j in 0...9{ //0~10까지
            for k in 0...j{ //j와 같거나 작은 수
                d[i][j] += d[i-1][k] % 10007 
            }
        
        }
    }
}
var sum = 0
//0에서 9까지 경우를 다 더해줌
//0도 오르막수 가능
for i in 0...9{
    sum += d[input][i] % 10007
}
print(sum % 10007)
