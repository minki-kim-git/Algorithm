//
//  main.swift
//  BAEKJOON-1373
//
//  Created by 김민기 on 2022/04/15.
//

//1373
//2진수가 주어졌을 때, 8진수로 변환하는 프로그램을 작성하시오.
//2진수가 8진수로 변환될때는 3개씩 나눠서 변환
import Foundation

var input = readLine()!.map{Int(String($0))!}
var count = 0
var sum = 0
var stack = [Int]()
//3개를 잘라서 보는데 제일 앞에는 0이 생략 될 수 있어서 입력값의 뒤에서 부터 탐색
for i in input.reversed(){
    count += 1
    if count == 1{
        if i == 1 { sum += 1 }
    }else if count == 2 {
        if i == 1 { sum += 2 }
    }else if count == 3 {
        if i == 1 { sum += 4 }
        count = 0
        stack.append(sum)
        sum = 0
    }
}
//입력값에 0만 들어왔을때
if stack.isEmpty {
    print(0)
}
//3개가 아닌 값일때 sum이 0이아님. 예)1110 -> 16(sum=1)
if sum != 0 {
    stack.append(sum)
    for i in stack.reversed(){
        print(i,terminator: "")
    }
} else { //3개씩 잘렸을때, 111111 -> 77(sum=0)
    for i in stack.reversed(){
        print(i,terminator: "")
    }
}

