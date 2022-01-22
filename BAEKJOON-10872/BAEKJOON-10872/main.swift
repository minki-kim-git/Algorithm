//
//  main.swift
//  BAEKJOON-10872
//
//  Created by 김민기 on 2022/01/22.
//재귀함수 - 팩토리얼
//재귀함수란? 하나의 함수에서 자신을 다시 호출하여 작업을 수행하는 방식으로 주어진 문제를 푸는 방법이다.

import Foundation

var input = Int(readLine()!)!
//var c : Int = 1
func a (ing:Int) -> Int {
    if ing == 0  {
        return 1
    } else {
        //c *= ing
        return  ing * a(ing: ing - 1)
    }
}

print(a(ing:input))

