//
//  main.swift
//  BAEKJOON-1100
//
//  Created by 김민기 on 2022/02/25.
//

import Foundation

var b = ["F","","F","","F","","F",""]
var a = ["","F","","F","","F","","F"]

var count = 0
for i in 0...7{
    let input = readLine()!.map{String($0)}
    
    if i % 2 == 0 {
        fir(str:input)
    } else {
        sec(str:input)
    }
}

func fir(str :[String]){
    for i in 0...7{
        if b[i] == str[i] {
            count += 1
        }
    }
}
func sec(str :[String]){
    for i in 0...7{
        if a[i] == str[i] {
            count += 1
        }
    }
}
print(count)
