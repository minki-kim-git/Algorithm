//
//  main.swift
//  BAEKJOON-10769
//
//  Created by 김민기 on 2022/03/25.
//

//:-) happy :-( sad
import Foundation

var input = readLine()!.map{String($0)}
var happy = 0
var sad = 0
if input.count >= 3 {
    //문자열을 세개씩 나눠서 비교
for i in 0...input.count-3{
    if input[i] == ":"&&input[i+1]=="-"&&input[i+2]==")"{
        happy += 1
    }
    else if input[i] == ":"&&input[i+1]=="-"&&input[i+2]=="("{
        sad += 1
    }
}
}
if happy == 0 ,sad == 0 {
    print("none")
} else if happy == sad {
    print("unsure")
} else if happy < sad {
    print("sad")
} else if happy > sad {
    print("happy")
}
