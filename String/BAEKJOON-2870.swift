//
//  BAEKJOON-2870.swift
//  
//
//  Created by 김민기 on 2022/07/21.
//

import Foundation
//2870
var n = Int(readLine()!)!
var num = [Int]()
var a = ["1","0","2","3","4","5","6","7","8","9"]
var str = ""
for _ in 0..<n{
    let input = readLine()!.map{String($0)}
    for i in input{
        if a.contains(i){
            str += i
        } else {
            if str != "" {
                num.append(Int(str)!)
            }
            str = ""
        }
    }
    if str != "" {
        num.append(Int(str)!)
        str = ""
    }
}

num.sort()

for j in num{
    print(j)
}
