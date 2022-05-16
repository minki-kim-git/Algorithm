//
//  BAEKJOON-2108.swift
//  
//
//  Created by 김민기 on 2022/05/16.
//


//2108

//산술평균 : N개의 수들의 합을 N으로 나눈 값
//중앙값 : N개의 수들을 증가하는 순서로 나열했을 경우 그 중앙에 위치하는 값
//최빈값 : N개의 수들 중 가장 많이 나타나는 값
//여러 개 있을 때에는 최빈값 중 두 번째로 작은 값을 출력한다.
//범위 : N개의 수들 중 최댓값과 최솟값의 차이

import Foundation
var testCase = Int(readLine()!)!
var num = [Int]()
for _ in 1...testCase{
    let input = Int(readLine()!)!
    num.append(input)
}
num.sort()
var max = 0
var temp = 4001 //처음에 비교할 때 절대 같을 수가 없는 수
var i = 0
var sum = 0
var comparison = 0
var a = [Int]()
//최빈값을 구하고 총합계를 구하기
while i != testCase{
    if temp == num[i]{ //빈도수 계산
        comparison += 1
    } else {
        comparison = 0
    }
    if max == comparison{ //기존의 최빈값과 같으면 추가(최빈값이 여러개가 나올 수 있기 때문에)
        a.append(num[i])
    } else if max < comparison{ //기존의 최빈값 보다 큰 새로운 최빈값이 나오면 전부 삭제하고 추가해줌
        print("삭제전,",a)
        a.removeAll()
        a.append(num[i])
        max = comparison
    }
    sum += num[i] //총합
    temp = num[i] //빈도수 계산
    i += 1
    
}
//String(format: "  " , ) "" 안에 들어가는 문자열 타입에 맞는 것으로 계산
var avg = String(format: "%.0f", Double(sum)/Double(testCase))
avg == "-0" ? print(0) : print(avg)
//-0 이란 값은 없기 때문에 0으로 출력
print(num[testCase/2])
if a.count > 1 { //최빈값이 한개 이상일때는 두번째로 작은 수 출력
    print(a)
} else {
    print(a[0])
}
print(num[testCase-1] - num[0])

