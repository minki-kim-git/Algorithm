//
//  BAEKJOON-14391.swift
//  
//
//  Created by 김민기 on 2022/06/30.
//

import Foundation
//14391
//처음에는 다 가로 값이 들어 올때는 세로로
// 수가 가로일떄 0 , 세로일때 1

func maxNum(index:[Int])->Int{
    var index = index
    var max = 0
    var j = 0
    var temp = ""
    //가로 구하기
    for i in 0..<index.count{
        j += 1
        if index[i] == 0{
           temp += String(arr[i])
        }
        if j == n[1]{
            j = 0
            if temp == "" {
                temp = "0"
            }
            max += Int(temp)!
            temp = ""
        }
        
    }
    //세로 구하기
    temp = ""
    for i in 0..<index.count{
        if index[i] == 1{
            temp += String(arr[i])
            for k in stride(from:i+n[1],through:index.count-1,by:n[1]){
                if index[k] == 1{
                    temp += String(arr[k])
                    index[k] = 0
                }else {
                    if temp == "" {
                        temp = "0"
                    }
                    max += Int(temp)!
                    temp = ""
                    break
                }
            }
        }
        if temp == "" {
            temp = "0"
        }
        max += Int(temp)!
        temp = ""
    }

    return max
}
var n = readLine()!.split(separator:" ").map{Int(String($0))!}
var arr = [Int]() //하나의 긴 배열로
for _ in 0..<n[0]{
    let input = readLine()!.map{Int(String($0))!}
    arr.append(contentsOf:input)
}
var max = 0
var bit = n[0] * n[1]
for i in 0..<(1<<bit){
    var num = Array(repeating:0,count:bit)
    for j in 0..<bit{
        if i&(1<<j) == 1<<j{
            num[j] = 1
        }
    }
    let temp = maxNum(index:num)
    if temp > max{
        max = temp
    }
}
print(max)
