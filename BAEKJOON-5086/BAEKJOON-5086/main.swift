//
//  main.swift
//  BAEKJOON-5086
//
//  Created by 김민기 on 2022/04/22.
//

//두 수가 주어졌을 때, 다음 3가지 중 어떤 관계인지 구하는 프로그램을 작성하시오.

//1.첫 번째 숫자가 두 번째 숫자의 약수이다.
//2.첫 번째 숫자가 두 번째 숫자의 배수이다.
//3.첫 번째 숫자가 두 번째 숫자의 약수와 배수 모두 아니다.
import Foundation

while let input = readLine(){
    if input == "0 0"{ //종료조건
        break
    }
    let num = input.split(separator: " ").map{Int(String($0))!}
    //입력값을 " " 를 기준으로 나눠줌
    if num[1] % num[0] == 0 { //1번경우
        print("factor")
    } else if num[0] % num[1] == 0 { //3번경우
        print("multiple")
    } else { //3번경우
        print("neither")
    }
}
