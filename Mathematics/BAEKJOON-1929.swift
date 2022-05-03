//
//  main.swift
//  BAEKJOON-1929
//
//  Created by 김민기 on 2022/02/02.
//

import Foundation

//M이상 N이하의 소수를 모두 출력하는 프로그램을 작성하시오.
//첫째 줄에 자연수 M과 N이 빈 칸을 사이에 두고 주어진다. (1 ≤ M ≤ N ≤ 1,000,000) M이상 N이하의 소수가 하나 이상 있는 입력만 주어진다.

//m부터 시작해서 n 까지 1씩 소수를 출력해준다 오름차순으로

//var input = readLine()!.split(separator: " ").map{Int(String($0))!}
//var count = 0
//var m = input[0]
//var n = input[1]
//for i in m...n {
//    if i == 2 { }
//    else if i == 1 {count += 1 }
//    else {
//        for j in 2..<i{
//            if i % j == 0 {
//                count += 1
//                break
//            }
//        }
//    }
//    if count == 0 {
//        print(i)
//    }
//    count = 0
//}
//답은 나오나 시간초과 나옴

//에라토스테네스의 체로 풀어봄
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var m = input[0]
var n = input[1]
var number = n;
var a = Array(repeating: 1, count: n+1)

func prime(){
    for i in stride(from: 2, through: number, by: 1){
        a[i]  = i //배열 a 를 n 크기 만큼 만들어줌
        
    }
    for i in stride(from: 2, through: number, by: 1){
        if a[i] == 0 { continue } //a 요소 값이 0 이면 생략
        for j in stride(from: i + i , through: number, by: i){ //i + i 부터 n 까지 i 만큼의 값으로 나아감 ->
            //i에 2로 시작되면 2+2 = 4 로 시작해서 number 까지 2 만큼 더해가면서 0으로 초기화
            a[j] = 0 //i 의 배수 값 만큼 0으로 초기화
        }
    }
    for i in stride(from: m, through: n, by: 1) {
        if a[i] == 1 {} //1이 나오면 출력 x
        else if a[i] != 0 { //0,1 이아닌 값을 출력
            print(a[i])
        }
    }
}
prime()
//정답은 맞으나 M~N 까지 의 범위를 정하지 않고 1에서 부터 시작되서 비효율


