//
//  main.swift
//  BAEKJOON-3052
//
//  Created by 김민기 on 2022/01/19.
//

import Foundation


//수 10개를 입력받는다.
//이 수들을 42로 나눈 나머지를 구한다.
//나머지 들 중에서 서로 다른 수의 개수를 구한다.

//1번 방법. 이중 포문 활용 하여 중복된 값을 -1로 바꿔주고 배열안에 -1을 뺀 갯수를 출력
//var num = [Int]()
//var remainder = [Int]()
//for i in 0...9 {
//    num.append(Int(readLine()!)!)
//    remainder.append(num[i] % 42)
//
//}
//for i in 0..<remainder.count - 1 {
//    for j in i+1..<remainder.count{
//        if remainder[i] == remainder[j] {
//            remainder[j] = -1
//        }
//    }
//}
//let wf = remainder.filter{ $0 != -1}.count
//    print(wf)

//2번방법. set사용 -> set안의 요소가 중복되지 않는 특징을 활용하여 풀이
    //var num = [Int]()
var set = Set<Int>()
for _ in 0...9{
    let input = Int(readLine()!)!
    let num = input % 42
    set.insert(num)
}

print(set.count)

