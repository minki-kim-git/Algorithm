//
//  main.swift
//  BAEKJOON-2231
//
//  Created by 김민기 on 2022/02/08.
//

import Foundation

//자연수 N이 주어졌을 때, N의 가장 작은 생성자를 구해내는 프로그램을 작성하시오.
//245의 분해합은 256(=245+2+4+5)이 된다. 따라서 245는 256의 생성자가 된다
//생성자가 없는 경우에는 0을 출력한다
//생성자가 나오는 경우의 수를 구한다.
//1부터 더해가면되잖아 10의자리 이하는 원래의 값과 1 부터 더한수
//10의 자리 이상은 원래의 값에 10의 자리와 1의 자리 더한수
//100의 자리 이상은 원래의 값에 100의 자리와 10의 자리, 1의자리를 더한수
//마지막에 1의 자리가 나올때 까지 나눠준다.


var input = Int(readLine()!)!
var sum = 0
var ans = 0
var a = 0
//input보다 적게 1씩 증가:  생성자가 나오는 모든 경우의 수를 구하기 위해
for i in 1...input{
    sum = i
    ans = sum
    a = ans
    //무한반복문으로 일의 자리까지 나눔
    //ex) %10 을 하여 나머지값을 5로하고
    //sum값이 일의 자리까지 10을 나눠줌
    for _ in 0... {
        ans +=  sum % 10
        sum /= 10
        if sum / 10 == 0 {
            ans += sum
            break
        }
    }
    if input == ans { //input 값에 맞는 값이 나오면 생성자인 a를 출력
        print(a)
        break
    }
    if input == ans { //이중포문 탈출
        break
    }
    ans = 0
}
if ans == 0 { //생성자가 없는 경우
    print(0)
}
