//
//  BAEKJOON-1699.swift
//  
//
//  Created by 김민기 on 2022/05/24.
//

import Foundation

//1. 이전 더하기 1 -> d[i-1] + 1
//2.그 수 의 제곱근 루트
//3.제곱된 값 중에 가장 큰 값을 빼고 남은 값 13 -> 9 + 4
//var input = Int(readLine()!)!
//var d = Array(repeating:0,count:input+1)
//d[1] = 1
//if input > 1 {
//for i in 2...input{
//    if i * i <= input{
//        d[i*i] = 1
//        for j in 2...input{
//            if i * i * j <= input{
//                d[i*i*j] = j
//            }
//        }
//    }
//    if d[i] == 0 {
//        let temp = d[i-1] + 1
//        var j = 2
//        while j*j < input {
//           j += 1
//        }
//        j -= 1
//        let max = d[input - d[j*j]]
//
//        if temp > d[max] + 1{
//            d[i] = d[max] + 1
//        } else {
//            d[i] = temp
//        }
//    }
//
//
//}
//}
//print(d)
//오답

//점화식
//d[n] = d[n-i^2] + 1
var input = Int(readLine()!)!
var d = Array(repeating:0,count:input+1)
//for i in 1...input{
//    var temp = 0
//    var minNum = 1000
//    for j in 1...input{
//        if j * j > i{
//            break
//        }
//        temp = min(d[i-j*j] + 1 , d[i-1] + 1)
//        if temp < minNum{ //마지막 j 값이 최솟값이 아닐 수도 있어서
                            //12 는 9 , 3 -> 4 가아니라 4, 4, 4 -> 3이 나옴
//            minNum = temp
//        }
//    }
//    d[i] = minNum
//}
//print(d[input])

//더 정리된 코드
for i in 1...input{
    d[i] = i // 1^2 한 경우 d[i] 는 i 개
    for j in 1...input{
        if j * j > i{
            break
        }
        if d[i] > d[i-j*j] + 1{ //d[i] 의 최솟값을 j^2를 늘리면서 비교
            d[i] = d[i-j*j] + 1
        }
    }
}
print(d[input])
