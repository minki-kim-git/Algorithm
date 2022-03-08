//
//  main.swift
//  BAEKJOON-4949
//
//  Created by 김민기 on 2022/03/08.
//

//모든 왼쪽 소괄호("(")는 오른쪽 소괄호(")")와만 짝을 이뤄야 한다.
//모든 왼쪽 대괄호("[")는 오른쪽 대괄호("]")와만 짝을 이뤄야 한다.
//모든 오른쪽 괄호들은 자신과 짝을 이룰 수 있는 왼쪽 괄호가 존재한다.
//모든 괄호들의 짝은 1:1 매칭만 가능하다. 즉, 괄호 하나가 둘 이상의 괄호와 짝지어지지 않는다.
//짝을 이루는 두 괄호가 있을 때, 그 사이에 있는 문자열도 균형이 잡혀야 한다.
//입력의 종료조건으로 맨 마지막에 점 하나(".")가 들어온다.


import Foundation

var arr = [String]()
while true {
    let input = readLine()!.map{String($0)}
    if input[0] == "." { // "." 만 입력될때 종료
        break
    }
    print(balance(input:input))
    arr.removeAll()
}
func balance(input:[String]) -> String{
    for i in input{
        if i == "(" || i == "["{
            arr.append(i)
        } else if i == ")" { // ")" 가 입력된 경우
            if arr.isEmpty { // ")" 는 pop 시켜줘야하는데 배열이 비어있으면 no반환
                return "no"
            }
            //"(" , "[" 가 짝이 맞춰저서 있어야함
            if arr[arr.count-1] == "(" {
                arr.remove(at: arr.count-1)
            } else if arr[arr.count-1] == "[" {
                return "no"
            }
        } else if i == "]" { // "]" 가 입력된 경우
            if arr.isEmpty { // "]" 는 pop 시켜줘야하는데 배열이 비어있으면 no반환
                return "no"
            }
            //"(" , "[" 가 짝이 맞춰저서 있어야함
            if arr[arr.count-1] == "[" {
                arr.remove(at: arr.count-1)
            } else if arr[arr.count-1] == "(" {
                return "no"
            }
        }
    }
    //arr이 비어있으면 괄호의 짝이 맞는경우기 때문에 yes반환
    if arr.isEmpty {
        return "yes"
    } else {  return "no"
    }
    
}
