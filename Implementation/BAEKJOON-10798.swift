//
//  BAEKJOON-10798.swift
//  
//
//  Created by 김민기 on 2022/05/08.
//

//세로로 읽기
import Foundation

var arr = Array(repeating:Array(repeating: "", count: 0),count:15)
for _ in 0...4{
    let input = readLine()!.map{String($0)}
    for j in 0..<input.count {
        arr[j].append(input[j])
    }
    
}
for i in 0...14{
    if !arr[i].isEmpty{
        for j in 0..<arr[i].count{
            print(arr[i][j],terminator: "")
        }
    }
}
