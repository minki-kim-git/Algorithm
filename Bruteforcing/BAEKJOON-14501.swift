//
//  BAEKJOON-14501.swift
//  
//
//  Created by 김민기 on 2022/06/26.
//
//14501
//오늘부터 N+1일째 되는 날 퇴사를 하기 위해서, 남은 N일 동안 최대한 많은 상담을 하려고 한다.
//상담을 적절히 했을 때, 백준이가 얻을 수 있는 최대 수익을 구하는 프로그램을 작성하시오.

import Foundation

func maxSum(i:Int,num:Int){
    if i == n{ //정답을 찾은경우
        if ans < num{
            ans = num
        }
        return
    }
    if i+t[i] <= n{ //상담을 하는 경우 : 상담을하는 날짜와 돈을 더해준다
        maxSum(i:i+t[i],num:num+p[i])
    }
    //상담을 하지 않는 경우 : 상담을 하지 않기 때문에 다음 인덱스인 +1
    maxSum(i:i+1,num:num)
}
var n = Int(readLine()!)!
var t = [Int]()
var p = [Int]()
var ans = 0
for _ in 0..<n{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    t.append(input[0])
    p.append(input[1])
}
maxSum(i:0,num:0)
print(ans)
