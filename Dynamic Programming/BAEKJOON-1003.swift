//
//  BAEKJOON-1003.swift
//  
//
//  Created by 김민기 on 2022/05/11.
//

import Foundation
//bottom-up
//기존의 피보나치를 구하는 식에서 0 과 1 이 나오는 수로 약간 변경
var zeroCount = Array(repeating:0,count:41)
zeroCount[0] = 1 
zeroCount[1] = 0
var oneCount = Array(repeating:0,count:41)
oneCount[0] = 0
oneCount[1] = 1
//미리 40 까지 실행 해놓고 입력된 값을 출력만 해줌
for i in 2...40{
zeroCount[i] = zeroCount[i-1] + zeroCount[i-2]
oneCount[i] = oneCount[i-1] + oneCount[i-2]
}
for _ in 1...Int(readLine()!)!{
let input = Int(readLine()!)!
print(zeroCount[input],oneCount[input])

}
