//
//  main.swift
//  BAEKJOON-1259
//
//  Created by 김민기 on 2022/03/24.
//

//떤 단어를 뒤에서부터 읽어도 똑같다면 그 단어를 팰린드롬이라고 한다.

import Foundation

func palindrome(input : String)->String{
    let arr = input.map{String($0)}
    let count = arr.count/2
    for i in 0..<count{
        //앞과 뒤를 비교해서 다르면 no반환
        if arr[i] != arr[arr.count-1-i] {
           return "no"
        }
    }
    //for문을 벗어나도 다른게 없으면 yes반환
    return "yes"
}

while let input = readLine() {
    if input == "0" {
        break
    }
    print(palindrome(input: input))
}
