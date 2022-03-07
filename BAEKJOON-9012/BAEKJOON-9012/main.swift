//
//  main.swift
//  BAEKJOON-9012
//
//  Created by 김민기 on 2022/03/07.
//

//만일 x 가 VPS 라면 이것을 하나의 괄호에 넣은 새로운 문자열 “(x)”도 VPS 가 된다. 그리고 두 VPS x 와 y를 접합(concatenation)시킨 새로운 문자열 xy도 VPS 가 된다. 예를 들어 “(())()”와 “((()))” 는 VPS 이지만 “(()(”, “(())()))” , 그리고 “(()” 는 모두 VPS 가 아닌 문자열이다.

import Foundation
var arr = [String]()
for _ in 1...Int(readLine()!)! {
    let input = readLine()!.map{String($0)}
    print(vps(i:input))
    arr.removeAll()
}
func vps(i:[String]) -> String{
    for j in i{
        if j == "(" {
            arr.append("(")
        } else {
            if arr.isEmpty { //배열에 "(" 가 없으면 no
                return "NO"
            }
                arr.remove(at:arr.count-1)
        }
    }
    if arr.isEmpty { // "(" , ")" 가 짝을 맞춰 있기 때문에 배열은 비어지게 된다.
        return "YES"
    } else { //배열이 비어있지 않으면 no
        return "NO"
    }
}

