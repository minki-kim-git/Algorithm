//
//  main.swift
//  BAEKJOON-11653
//
//  Created by 김민기 on 2022/01/31.
//

import Foundation

//N의 소인수분해 결과를 한 줄에 하나씩 오름차순으로 출력한다. N이 1인 경우 아무것도 출력하지 않는다.

//소수 작은수 부터 나눠나감 -> 소수가 나올 때 까지 나눔
//소수를 일단 나오게 해야됨 소수 구하고 나오는거 나누기

//input 보다 작은 소수를 구하고 작은 소수부터 나눠줌
//나누어 떨어진 소소수 값을 출력
//소수로 나누어 떨어진 값을 input 값으로 바꾸어 위에거 실행
//자기 자신이 아닌 소수로 나누어 떨어지지 안ㄹ는다면 마지막에 input를 출력

//var input = Int(readLine()!)!
//var a = 0
//var i = 0
//if input == 1 {  }
//else if input == 2 {print(2) }
//else {
//    while i < 15 {
//        if a != input{
//        for i in 2..<input - 1{
//            if input % i == 0{
//                input = input / i
//                print(i)
//                break
//            }
//        } }
//        else  {
//            break
//        }
//        i += 1
//    }
//    print(input)
//}
//백준 제출시 런타임 에러 뜨고 간단하게 줄일 수 있음

var input = Int(readLine()!)!
if input == 1 {
    print("")
} else {
    //for i in stride(from: 2, through: input, by: 1){
    //else 구문을 사용하지않고 쓸수 있음 2보다 작은수가 input에 들어오면 아예 for문 구문을 실행하지 않음

    for i in 2...input {
        while input % i == 0 {
            if input % i == 0 {
                print(i)
                input = input / i
            }
        }
    }
}

