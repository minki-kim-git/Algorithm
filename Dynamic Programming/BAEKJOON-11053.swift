//
//  BAEKJOON-11053.swift
//  
//
//  Created by 김민기 on 2022/05/20.
//

//11053
//앞에 작은수가 나오는 수 중에 가장 많은 수를 구하는 문제
import Foundation

var sequenceSize = Int(readLine()!)!
var sequence = readLine()!.split(separator:" ").map{Int(String($0))!}
sequence.insert(0, at: 0) //d[] 랑 길이 맞추려고 가장 앞에 0을 추가
var d = Array(repeating:1,count:sequenceSize+1)
var count = 1 //입력이 한개만 있는 경우 처리
if sequenceSize > 1{
for i in 2...sequenceSize{
    var max = 1 //자신 보다 작은 수가 없는 경우 처리 0을 하면 d[] 에 0이 저장됨
    var temp = 0
    //이전의 수 들과 비교하여 작은 수가 나올때 마다 그 수의 d[] 값(긴 부분 수열)을 더해줌
    for j in stride(from:i,through:1,by:-1){
        if sequence[i] > sequence[j] {
            temp = d[j] + d[i]
        }
        if temp > max {
            max = temp
        }
    }
    d[i] = max //가장 큰 수를 저장
    if max > count{ //가장 긴 수열 판별
        count = max
    }
}
    
}
print(count)
