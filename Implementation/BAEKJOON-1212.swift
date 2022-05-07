//
//  main.swift
//  BAEKJOON-1212
//
//  Created by 김민기 on 2022/04/16.
//

//1212
//8진수가 주어졌을 때, 2진수로 변환하는 프로그램을 작성하시오.
import Foundation
var input = readLine()!.map{Int(String($0))!}
var count = 0
for i in input{
    if i == 7 {
        print(111,terminator: "")
    } else if i == 6 {
        print(110,terminator: "")
    } else if i == 5 {
        print(101,terminator: "")
    } else if i == 4 {
        print(100,terminator: "")
    } else {
        if count == 0{
            if i == 3 { //0이 앞에 나오면 생략
                print(011,terminator: "")
            } else if i == 2 {
                print(010,terminator: "")
            } else if i == 1 {
                print(001,terminator: "")
            } else if i == 0 {
                print(000,terminator: "")
            }
        }else {
            if i == 3 { //0이 생략되지 않게
                print("011",terminator: "")
            } else if i == 2 {
                print("010",terminator: "")
            } else if i == 1 {
                print("001",terminator: "")
            } else if i == 0 {
                print("000",terminator: "")
            }

        }
    }
    count += 1
}
print()
