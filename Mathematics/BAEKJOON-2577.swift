//
//  main.swift
//  BAEKJOON-2577
//
//  Created by 김민기 on 2022/01/18.
//

import Foundation

//값 세 개를 어떻게 받을것이냐?
// 리절트 값을 어떻게 구할것이냐 1번 그냥 곱하기 2번 for 루프 안에서 곱하기 3번 리듀스
//이 리절트를 어떻게 문자배열로 바꿀것이냐 -> 맵 어레이 반복문
// 문자열로 바꾼것을 어떻게 카운트 할거냐?
// 이 카운트를 어떻게 출력할것이냐?

//1.입력 받는 첫번쨰 방법
//var a = Int(readLine()!)!
//var b = Int(readLine()!)!
//var c = Int(readLine()!)!
//var result = String(a*b*c)

//2.입력 받는 두번째 방법
var num :[Int] = [0,0,0] //= Array(repeating: 0, count: 3)
var result : Int = 1
for i in 0...2{
    //num.append(Int(readLine()!)!)
    num[i] = Int(readLine()!)!
    //result *= num[i]
}
result = num.reduce(1, *)
////1번 방법
let res = String(result).map{Int(String($0))!}
var count = [Int](repeating: 0, count: 10)
//var count : [Int] = Array.init(repeating: 0, count: 10)
for i in 0...9 {
     count[i] = res.filter{ $0 == i }.count
    print(count[i])
}


////2번 방법
//while result > 0 {
//    let a = result % 10
//    count[a] += 1
//    result /= 10
//}
//for i in count {
//    print(i)
//}
//count.forEach{
//    print($0)
//}
