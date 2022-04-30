//
//  main.swift
//  BAEKJOON-1541
//
//  Created by 김민기 on 2022/04/30.
//

//1541
import Foundation
var input = readLine()!.map{String(($0))}
var a = "" //입력값
var firstnum = "" //첫번째로 숫자가 들어올 때 구분하려고
var c = 0 //결과
var state = "" //부호의 상태를 나타내고 - 가 나오면 - 뒤의 모든수는 빼주면 됨
func plus(a:String){
    c += Int(a)!
    firstnum = "x"
}
func minus(a:String){
    if firstnum == ""{
        c = Int(a)!
        firstnum = "x" //첫번째 수가 들어왔음을 표시
    } else {
        c -= Int(a)!
    }
}
for i in input {
    if i == "+" {
        if state == "-"{ //- 상태이면 무조건 다 빼주기
            minus(a: a)
            a = ""
        } else {
            plus(a: a)
            a = ""
        }
    } else if i == "-"{
        if state != "-" { // - 상태가 아닌데 - 가 들어오면 이전수와 더해줘야함 예) 10+4-1 -> 15-1 -> 14
            plus(a: a)
            a = ""
        }else{ //- 상태면 다 빼주기
            minus(a: a)
            a = ""
        }
        state = "-"
    } else {
    a += i
    }
}
//부호가 아닌 마지막 수를 처리
if state != "-"{
    print(c+Int(a)!)
}else{
    print(c-Int(a)!)
}

