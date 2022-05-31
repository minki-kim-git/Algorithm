//
//  BAEKJOON-9465.swift
//  
//
//  Created by 김민기 on 2022/05/30.
//


//9465
//1.떼지 않거나 2.위에 스티커를 떼거나 3.밑에 거를 떼거나
//j:0 아무것도 떼지 않음
//j:1 위에거
//j:2 밑에거

import Foundation
var testCase = Int(readLine()!)!
for _ in 1...testCase{
    let input = Int(readLine()!)!
    var d = Array(repeating: Array(repeating: 0, count: 3), count: input)
    var scoreArr = Array(repeating: Array(repeating: 0, count: 0), count: 2)
    for k in 0...1{
        let score = readLine()!.split(separator:" ").map{Int(String($0))!}
        scoreArr[k] = score
    }
    d[0][0] = 0
    d[0][1] = scoreArr[0][0]
    d[0][2] = scoreArr[1][0]
    for i in 1..<input{
        for j in 0...2{
            if j == 0{
                d[i][j] = max(d[i-1][1],d[i-1][2],d[i-1][0])
                //현재 떼어낸 스티커가 없기 때문에 이전 위치에서 큰 값을 떼어냄
            }
            if j == 1{
                d[i][j] = scoreArr[0][i] + max(d[i-1][0],d[i-1][2])
                //위에 스티커를 떼어내고 이전에 안떼거나 밑에 거 중에서 큰값
            }
            if j == 2{
                d[i][j] = scoreArr[1][i] + max(d[i-1][1],d[i-1][0])
                //밑에 스티커를 떼어내고 이전에 안떼거나 위에 거 중에서 큰값
            }
        }
    }
    print(d[input-1].max()!)
}

