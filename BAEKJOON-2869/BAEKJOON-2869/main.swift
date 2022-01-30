//
//  main.swift
//  BAEKJOON-2869
//
//  Created by 김민기 on 2022/01/28.
//

import Foundation

//이 달팽이는 높이가 V미터인 나무 막대를 올라갈 것이다.
//달팽이는 낮에 A미터 올라갈 수 있다. 하지만, 밤에 잠을 자는 동안 B미터 미끄러진다. 또, 정상에 올라간 후에는 미끄러지지 않는다.
//달팽이가 나무 막대를 모두 올라가려면, 며칠이 걸리는지 구하는 프로그램을 작성하시오.

//첫째 줄에 세 정수 A, B, V가 공백으로 구분되어서 주어진다. (1 ≤ B < A ≤ V ≤ 1,000,000,000)

//첫번째 방법
//var input = readLine()!.split(separator: " ").map{Int(String($0))!}
//print(input)
//var a = input[0]
//var b = input[1]
//var v = input[2]
//var i = 1
//var result = 0
//while true {
//    result += a
//    print("a를 더한값 : \(result)")
//
//    if result >= v {
//        break
//    }
//    result -= b
//    print("b를 뺀값 : \(result)")
//    i += 1
//}
//print(i)
//위 코드는 답은 나오지만 시간초과가 걸린다. 수학적으로 접근해야될듯.


//두번째 방법
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var a = input[0]
var b = input[1]
var v = input[2]
var result = v - a //높이에서 올라간값 만큼 빼주기
if result < a - b {
    result == 0 ? print(1) : print(result / (a - b)  + 2)
    //result 가 0이면 무조건 1을 출력
} else if result % (a-b) == 0 { //result에서 하루동안 올라간 길이가 나누어 떨어지면
    print(result / (a - b)  + 1)
} else {
    print(result / (a - b)  + 2)
}
