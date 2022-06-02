//
//  BAEKJOON-11054.swift
//  
//
//  Created by 김민기 on 2022/06/01.
//

//11054
//바이토닉 부분 수열
// 그 수열의 부분 수열 중 바이토닉 수열이면서 가장 긴 수열의 길이를 구하는 프로그램을 작성하시오.
//증가하는 부분과 감소하는 부분이 중첩되지 않게 끔
//증가하는 부분이 어떤 수를 기점으로 감소하는 부분으로
//ex) 1 2 3 4 3 2 1 , 1 5 9 8 3 2 1 둘다 길이가 7인 바이토닉 순열

import Foundation

var sequence = Int(readLine()!)!
var input = readLine()!.split(separator:" ").map{Int(String($0))!}
var increase = Array(repeating: 1, count: sequence) //증가
var decrease = Array(repeating: 1, count: sequence) //감소
increase[0] = 1
decrease[0] = 1
//증가하는 부분
for i in 1..<sequence{
    var max = increase[i]
    var temp = 0
    for j in stride(from: i-1, through: 0, by: -1){
        if input[i] > input[j]{
            temp = increase[j] + 1
        }
        if max < temp{
            max = temp
        }
        
    }
    increase[i] = max
}
//감소하는 부분
for i in stride(from: sequence-1, through: 0, by: -1){
    var max2 = decrease[i]
    var temp2 = 0
    for j in i+1..<sequence{
        if input[i] > input[j]{
            temp2 = decrease[j] + 1
            }
        if max2 < temp2 {
            max2 = temp2
        }
    }
    
    decrease[i] = max2
}
var ans = 0
for i in 0..<sequence{
    if ans < increase[i] + decrease[i] - 1{
        ans = increase[i] + decrease[i] - 1
        //-1은 증가하는 부분과 감소하는 부분에서 한개의 중복값이 발생해서
    }
}
print(ans)
