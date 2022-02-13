//
//  main.swift
//  BAEKJOON-4153
//
//  Created by 김민기 on 2022/01/31.
//

import Foundation
while true {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    if input[0] == 0 && input[1] == 0 && input[2] == 0 {
        break
    }
    if input[0] > input[1] && input[0] > input[2]{
        if input[0] * input[0] == input[1] * input[1] + input[2] * input[2] {
            print("right")
        } else {
            print("wrong")
        }
    } else if input[1] > input[0] && input[1] > input[2]{
        if input[1] * input[1] == input[0] * input[0] + input[2] * input[2] {
            print("right")
        } else {
            print("wrong")
        }
    } else {
        if input[2] * input[2] == input[0] * input[0] + input[1] * input[1] {
        print("right")
    } else {
        print("wrong")
    }
        
    }
}
