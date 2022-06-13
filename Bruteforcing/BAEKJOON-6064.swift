//
//  BAEKJOON-6064.swift
//  
//
//  Created by 김민기 on 2022/06/13.
//

import Foundation

//6064
//네 개의 정수 M, N, x와 y가 주어질 때, <M:N>이 카잉 달력의 마지막 해라고 하면 <x:y>는 몇 번째 해를 나타내는지 구하는 프로그램을 작성하라.
//<x:y>가 유효하지 않은 표현이면, -1을 출력한다.

//func printAns(input:[Int])->Int{
//    var count = 0
//    let m = input[0]
//    let n = input[1]
//    let x = input[2]
//    let y = input[3]
//    var a = 0
//    var b = 0
//    while true{
//        if x == a && y == b{
//            break
//        }
//        if m == a && n == b {
//            count = -1
//            break
//        }
//        if a == m {
//            a = 0
//        }
//        if b == n{
//            b = 0
//        }
//        a += 1
//        b += 1
//        count += 1
//    }
//    return count
//}
//var testCase = Int(readLine()!)!
//for _ in 1...testCase {
//    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
//    print(printAns(input: input))
//}
//1씩 증가하는 코드 시간초과 나옴

//x를 기준으로 m의 크기로 늘려서 n과 동일한 y를 찾는다.
func printAns(input:[Int])->Int{
    //-% 연산으로 계산 하기 위해 -1 -> x % m 을 하면 0이 나오는 경우가 있다.
    //5 % 5 = 0 -> (5 - 1) % 5 = 4
    let m = input[0]
    let n = input[1]
    let x = input[2] - 1
    let y = input[3] - 1
    var count = x
    var maxCount = m
    while true {
        if count % n == y{
            break
        }
        if maxCount % n == n-1{ //m,n의 범위를 넘어가는 경우에는 -1 출력
            return -1
        }
        count += m  //x의 값은 m 만큼 반복하기 때문에 x를 기준으로 탐색하고 y의 값과 같은 n이 나오면 종료
        maxCount += m  //m,n의 범위를 넘어가는 경우를 찾기 위해 m의 최대값 기준으로 탐색
    }
    return count + 1
}
var testCase = Int(readLine()!)!
for _ in 1...testCase {
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    print(printAns(input: input))
}
