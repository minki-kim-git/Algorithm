//
//  main.swift
//  BAEKJOON-10828
//
//  Created by 김민기 on 2022/03/04.
//

import Foundation

var stack = [Int]()
var testCase = Int(readLine()!)!
for _ in 0..<testCase{
    let input = readLine()!.split(separator: " ").map{String($0)}
    if input[0] == "push" {
        stack.append(Int(input[1])!)
    } else if input[0] == "pop" {
        if stack.isEmpty == true{
            print(-1)
        } else {
            print(stack[stack.count-1])
            stack.remove(at:stack.count-1)
        }
    } else if input[0] == "size" {
        print(stack.count)
    }else if input[0] == "empty" {
        stack.isEmpty == false ? print(0) : print(1)
    }else {
        if stack.isEmpty == true{
            print(-1)
        } else {
        print(stack[stack.count-1])
        }
    }
}


