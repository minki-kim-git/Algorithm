//
//  BAEKJOON-15990.swift
//  
//
//  Created by 김민기 on 2022/05/18.
//
// 1,000,000,009로 나눈 나머지를 출력한다.
//단, 같은 수를 두 번 이상 연속해서 사용하면 안 된다.
import Foundation
var inputArr = [Int]()
for _ in 1...Int(readLine()!)!{
    let input = Int(readLine()!)!
    inputArr.append(input)
}
var max = inputArr.max()!
var arr = Array(repeating:Array(repeating: 0, count: 4),count: max+1)
arr[0][3] = 1
arr[0][2] = 1
arr[0][1] = 1
//연속된 두자리를 판단

for i in 1...max{
    if i == 1 { //중복되는 경우의 예외처리
        arr[i][1] = 1
    }
    if i == 2{
        arr[i][2] = 1
    }
    if i == 3{
        arr[i][3] = 1
    }
    if i > 1{
        arr[i][1] = (arr[i-1][2] + arr[i-1][3])%1000000009
    }
    if i > 2 {
        arr[i][2] = (arr[i-2][1] + arr[i-2][3])%1000000009
    }
    if i > 3{
        arr[i][3] = (arr[i-3][1] + arr[i-3][2])%1000000009
    }
    
}
for i in inputArr{
    var sum = 0
    for j in 1...3{
        sum += arr[i][j]
    }
    print(sum%1000000009)
}
