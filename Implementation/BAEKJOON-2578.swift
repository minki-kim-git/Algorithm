//
//  BAEKJOON-2578.swift
//  
//
//  Created by 김민기 on 2022/05/17.
//

import Foundation
var count = 0
var bingocount = 0
var bingo = Array(repeating:Array(repeating:"",count:0),count:5)
var icount = Array(repeating: 0, count: 5)
var jcount = Array(repeating: 0, count: 5)
var num = [String]()
for i in 0...4{
    let input = readLine()!.split(separator:" ").map{String($0)}
    bingo[i].append(contentsOf:input)
}
//사회자가 부른값 입력
for _ in 0...4{
    let input = readLine()!.split(separator:" ").map{String($0)}
    for j in input {
        num.append(j)
    }
}
//빙고숫자 3개 이상이면 반복문 종료
while bingocount < 2 {
    for k in num {
        for i in 0..<bingo.count{
            var a = 0
            for j in 0..<bingo[i].count{
                if k == bingo[i][j] {
                    bingo[i][j] = "0"
                    icount[i] += 1
                    jcount[j] += 1
                    //세로
                    if icount[i] == 5{
                        bingocount += 1
                    }
                    //가로
                    if jcount[j] == 5 {
                        bingocount += 1
                    }
                    //대각선
                    if bingo[0][0] == "0" , bingo[1][1] == "0" ,bingo[2][2] == "0",bingo[3][3] == "0",bingo[4][4] == "0" {
                        bingo[0][0] = "-1"
                        bingocount += 1
                    }
                    //대각선
                    if bingo[4][0] == "0",bingo[3][1] == "0",bingo[2][2] == "0",bingo[1][3] == "0",bingo[0][4] == "0"{
                        bingo[0][4] = "-1"
                        bingocount += 1
                    }
                    count += 1
                    a = 1
                    break
                }
            }
            if a == 1 {
                break
            }
        } // 빙고숫자
        if bingocount > 2 {
            break
        }
    }
}
print(count)
