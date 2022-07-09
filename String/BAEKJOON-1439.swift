//
//  BAEKJOON-1439.swift
//  
//
//  Created by 김민기 on 2022/07/09.
//
// 0과 1로만 이루어진 문자열 S를 가지고 있다. 다솜이는 이 문자열 S에 있는 모든 숫자를 전부 같게 만들려고 한다. 다솜이가 할 수 있는 행동은 S에서 연속된 하나 이상의 숫자를 잡고 모두 뒤집는 것이다. 뒤집는 것은 1을 0으로, 0을 1로 바꾸는 것을 의미한다.
//0,1 둘다 각각 바뀌는 경우를 계산하고 최소값을 출력

import Foundation
var s = readLine()!.map{String($0)}
var zero = 0
var one = 0
var zeroCount = 0
var oneCount = 0
for i in 0..<s.count {
    if s[i] == "0"{
        if zeroCount != 0 {
            zero += 1
            zeroCount = 0
        }

        oneCount += 1
    }
    if s[i] == "1"{
        if oneCount != 0 {
            one += 1
            oneCount = 0
        }
        zeroCount += 1

    }
}
//제일 마지막에 오는 숫자를 처리
if zeroCount != 0 {
    zero += 1
}
if oneCount != 0 {
    one += 1
}
var ans = zero < one ? zero : one
print(ans)
