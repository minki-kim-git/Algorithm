//
//  main.swift
//  BAEKJOON-9655
//
//  Created by 김민기 on 2022/03/17.
//

import Foundation

var input = Int(readLine()!)!
var count = 0 //반복문이 몇번 돌아가는지
var sum = 0
while true{
    //입력값이 sum보다 클때 +3
    if input > sum {
        sum += 3
    }
    //sum이 입력값보다 클때는 3이 아니라 1개를 가져가야하는 경우라 -3 을 해주고 +1
    if input < sum {
        sum -= 3
        sum += 1
    }
    //반복문 돌아가는 횟수
    count += 1
    if input == sum {
        break
    }
}
//cy가 두번째로 돌을 가져가기 때문에 2의 나머지 계산
count % 2 == 0 ? print("CY") : print("SK")
