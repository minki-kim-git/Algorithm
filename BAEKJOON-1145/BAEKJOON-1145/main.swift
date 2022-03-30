//
//  main.swift
//  BAEKJOON-1145
//
//  Created by 김민기 on 2022/03/30.
//

//서로 다른 다섯 개의 자연수가 주어질 때, 적어도 대부분의 배수를 출력하는 프로그램을 작성하시오.

//import Foundation
//var input = readLine()!.split(separator:" ").map{Int(String($0))!}
//
//var arr = [Int]()
//var count = [Int]()
//var i = 1
//while !count.contains(3) {
//    for j in input{
//        if arr.contains(i*j){
//            count[arr.firstIndex(of: i*j)!] += 1
//        } else {
//        arr.append(i*j)
//        count.append(1)
//        }
//    }
//    i += 1
//
//}
//print(arr[count.firstIndex(of: 3)!])
//이 코드는 시간도 오래 걸리고 제일 작은 수가 안나올 수도 있다
//그냥 곱하는것이 아니라 다르게 접근

import Foundation
var input = readLine()!.split(separator:" ").map{Int(String($0))!}
var min = input.min()!
var count = 0
while count < 3 { //3개 이상의 배수가 나오면 종료
    count = 0
    for j in input{
        if min % j == 0{
            count += 1
        }
    }
    min += 1 //제일 작은 수를 1씩 더해주면서 다른 수들의 나머지가 0이 될때,
             //즉 나누어 떨어질때 의 수가 답이된다.
}
print(min-1) //코드상에서 마지막에 필요없는 1을 더해줘서 빼줌
