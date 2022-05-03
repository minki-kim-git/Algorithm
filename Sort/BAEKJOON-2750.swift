//
//  main.swift
//  BAEKJOON-2750
//
//  Created by 김민기 on 2022/02/10.
//

//첫째 줄에 수의 개수 N(1 ≤ N ≤ 1,000)이 주어진다. 둘째 줄부터 N개의 줄에는 수 주어진다. 이 수는 절댓값이 1,000보다 작거나 같은 정수이다. 수는 중복되지 않는다.
//첫째 줄부터 N개의 줄에 오름차순으로 정렬한 결과를 한 줄에 하나씩 출력한다.

import Foundation

//선택정렬
var sort = [Int]()
var min : Int
var temp = 0
var ind = 0
var testCase = Int(readLine()!)!
for _ in 0..<testCase{
    let input = Int(readLine()!)!
    sort.append(input)
}
for i in 0..<sort.count {
    min = 1001 // min값은 비교하는 값이기 때문에 배열의 값보다 큰거를 쓰고 두번째 포문에서 나올 때 마다 초기화를 시켜줘야됨
    for j in i..<sort.count{ //i만큼 요소를 증가해야되서
    if min > sort[j]{ //min을 sort의 요소와 비교해 제일작은값찾기
        min = sort[j]
        ind = j
    }
}
temp = sort[i] //swap
sort[i] = sort[ind]
sort[ind] = temp
}


//삽입정렬
//var temp : Int = 0
//var j : Int = 0
//for i in 0...sort.count-2 {
//    j=i
//    while sort[j] > sort[j+1] { //옆의 요소 끼리 비교해서 왼쪽 요소가 작으면 스왑
//    temp = sort[j]
//    sort[j] = sort[j+1]
//    sort[j+1] = temp
//        j = j - 1 //이전 요소를 비교하기 위해서 일씩 줄여 줘야함
//       if j < 0{ //0보다 j의 값이 작아지면 브레이크 해줘야함 안하면 오류
//           break
//        }
//}}
for i in 0..<sort.count{
print(sort[i])
}
