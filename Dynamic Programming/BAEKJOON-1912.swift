//
//  BAEKJOON-1912.swift
//  
//
//  Created by 김민기 on 2022/05/23.
//

import Foundation
//1912
//var testCase = Int(readLine()!)!
//var input = readLine()!.split(separator:" ").map{Int(String($0))!}
//var max = input[0]
//var d = Array(repeating: 0, count: testCase+1)
//for i in 1..<testCase{
//    var temp = input[i]
//    if temp > max {
//        max = temp
//    }
//    for j in stride(from: i-1, through: 0, by: -1){
//        temp += input[j]
//        if temp > max {
//            max = temp
//        }
//    }
//}
//print(max)
//시간초과 나옴
//이중 포문으로 1:1로 매칭하면서 하는거라 시간이 오래걸림

//dp로 풀이
var testCase = Int(readLine()!)!
var input = readLine()!.split(separator:" ").map{Int(String($0))!}
var realMax = input[0]
var d = Array(repeating: 0, count: testCase)
d[0] = input[0]
for i in 1..<testCase{
    let temp =  d[i-1] + input[i] //이전의 값들과 현재의 값을 더하기
    var max = input[i] // 현재의 값
    if temp > max {  //위의 두값 중 큰값을 d[i] 에 저장
        max = temp
        }
    d[i] = max
    if max > realMax{
        realMax = max
    }
}
print(realMax)
