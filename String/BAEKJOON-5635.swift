//
//  BAEKJOON-5635.swift
//  
//
//  Created by 김민기 on 2022/07/13.
//
//첫째 줄에 가장 나이가 적은 사람의 이름, 둘째 줄에 가장 나이가 많은 사람 이름을 출력한다.
import Foundation
var n = Int(readLine()!)!
var young = [1,1,1990]
var old = [12,31,2010]
var youngName = ""
var oldName = ""
for _ in 0..<n{
    let input = readLine()!.split(separator:" ").map{String($0)}
    if Int(input[3])! >= young[2] {
        if Int(input[3])! > young[2] {
            youngName = input[0]
            young[0] = Int(input[1])!
            young[1] = Int(input[2])!
            young[2] = Int(input[3])!
        } else {
            if Int(input[2])! > young[1] {
                youngName = input[0]
                young[0] = Int(input[1])!
                young[1] = Int(input[2])!
                young[2] = Int(input[3])!
            }
            if Int(input[2])! == young[1] && Int(input[1])! > young[0]  {
                    youngName = input[0]
                    young[0] = Int(input[1])!
                    young[1] = Int(input[2])!
                    young[2] = Int(input[3])!
                }
            
        }
    }
    
    if Int(input[3])! <= old[2] {
        if Int(input[3])! < old[2] {
            oldName = input[0]
            old[0] = Int(input[1])!
            old[1] = Int(input[2])!
            old[2] = Int(input[3])!
        } else {
            if Int(input[2])! < old[1] {
                oldName = input[0]
                old[0] = Int(input[1])!
                old[1] = Int(input[2])!
                old[2] = Int(input[3])!
            }
            if Int(input[2])! == old[1] && Int(input[1])! < old[0]  {
                oldName = input[0]
                old[0] = Int(input[1])!
                old[1] = Int(input[2])!
                old[2] = Int(input[3])!
                }
            
        }
    }
    
}
print(youngName)
print(oldName)
