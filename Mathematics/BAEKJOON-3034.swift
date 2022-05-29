//
//  BAEKJOON-3034.swift
//  
//
//  Created by 김민기 on 2022/05/29.
//

//3034
//피타고라스의 정리를 사용하는 문제
import Foundation

var input = readLine()!.split(separator:" ").map{Int(String($0))!}
var a = (input[1] * input[1]) + (input[2] * input[2]) //대각선의 길이
for _ in 1...input[0]{
    let input = Int(readLine()!)!
    if a >= input * input { //대각선의 길이보다 작거나 같으면 들어감
        print("DA")
    } else {
        print("NE")
    }
}
