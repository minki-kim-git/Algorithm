//
//  BAEKJOON-3085.swift
//  
//
//  Created by 김민기 on 2022/06/06.
//

import Foundation
//3085
//빨간색은 C, 파란색은 P, 초록색은 Z, 노란색은 Y로 주어진다.
//모두 같은 색으로 이루어져 있는 가장 긴 연속 부분(행 또는 열)을 고른 다음 그 사탕을 모두 먹는다.
var n = Int(readLine()!)!
var candy = Array(repeating: Array(repeating: "", count: 0), count: n)
var maxNum = 0

for i in 0..<n{
    let input = readLine()!.map{String($0)}
    candy[i].append(contentsOf:input)
}
for i in 0..<n{
    for j in 0..<n{
            
            var arr = Array(repeating: Array(repeating: 0, count: 1), count: 4)
                if j + 1 < n  {
                var temp = candy[i][j+1]
                candy[i][j] = candy[i][j+1]
                    var red = 0
                    var blue = 0
                    var green = 0
                    var yellow = 0
                    for l in 0..<n{
                        if candy[l][j] == "C"{
                            red += 1
                        } else {
                            arr[0].append(red)
                        }
                         if candy[l][j] == "P"{
                            blue += 1
                         }else{
                             arr[1].append(blue)
                         }
                        if candy[l][j] == "Z"{
                            green += 1
                         }else{
                             arr[2].append(green)
                         }
                        if candy[l][j] == "Y"{
                            yellow += 1
                         }else {
                             arr[3].append(yellow)
                         }

                    }
                     red = 0
                     blue = 0
                     green = 0
                     yellow = 0
                    for r in 0..<n{
                        if candy[i][r] == "C"{
                            red += 1
                        } else {
                            arr[0].append(red)
                        }
                         if candy[i][r] == "P"{
                            blue += 1
                         }else{
                             arr[1].append(blue)
                         }
                        if candy[i][r] == "Z"{
                            green += 1
                         }else{
                             arr[2].append(green)
                         }
                        if candy[i][r] == "Y"{
                            yellow += 1
                         }else {
                             arr[3].append(yellow)
                         }
                    }
                    print(arr)
                    candy[i][j] = temp
                }
                if maxNum < max(arr[0].max()!,arr[1].max()!,arr[2].max()!,arr[3].max()!){
                    maxNum = max(arr[0].max()!,arr[1].max()!,arr[2].max()!,arr[3].max()!)
                }
                if i + 1 < n  {
                var temp = candy[i+1][j]
                candy[i][j] = candy[i+1][j]
                    var red = 0
                    var blue = 0
                    var green = 0
                    var yellow = 0
                    for l in 0..<n{
                        if candy[l][j] == "C"{
                            red += 1
                        } else {
                            arr[0].append(red)
                        }
                         if candy[l][j] == "P"{
                            blue += 1
                         }else{
                             arr[1].append(blue)
                         }
                        if candy[l][j] == "Z"{
                            green += 1
                         }else{
                             arr[2].append(green)
                         }
                        if candy[l][j] == "Y"{
                            yellow += 1
                         }else {
                             arr[3].append(yellow)
                         }

                    }
                     red = 0
                     blue = 0
                     green = 0
                     yellow = 0
                    for r in 0..<n{
                        if candy[i][r] == "C"{
                            red += 1
                        } else {
                            arr[0].append(red)
                        }
                         if candy[i][r] == "P"{
                            blue += 1
                         }else{
                             arr[1].append(blue)
                         }
                        if candy[i][r] == "Z"{
                            green += 1
                         }else{
                             arr[2].append(green)
                         }
                        if candy[i][r] == "Y"{
                            yellow += 1
                         }else {
                             arr[3].append(yellow)
                         }
                    }
                    candy[i][j] = temp
                }
                if maxNum < max(arr[0].max()!,arr[1].max()!,arr[2].max()!,arr[3].max()!){
                    maxNum = max(arr[0].max()!,arr[1].max()!,arr[2].max()!,arr[3].max()!)
                }
                
            
            
            }
        
        }
print(maxNum)
