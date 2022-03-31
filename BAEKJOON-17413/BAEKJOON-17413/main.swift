//
//  main.swift
//  BAEKJOON-17413
//
//  Created by 김민기 on 2022/03/31.
//

//알파벳 소문자('a'-'z'), 숫자('0'-'9'), 공백(' '), 특수 문자('<', '>')로만 이루어져 있다.
//문자열의 시작과 끝은 공백이 아니다.
//'<'와 '>'가 문자열에 있는 경우 번갈아가면서 등장하며, '<'이 먼저 등장한다. 또, 두 문자의 개수는 같다.
//첫째 줄에 문자열 S의 단어를 뒤집어서 출력한다.

import Foundation

var input = readLine()!.map{String($0)}
var reverse = [String]()
var a = ""
for i in input {
    if i == "<"{
        a = "<" //괄호를 열린것으로
        if !reverse.isEmpty{
            reverse.reverse()
            print(reverse.map{String($0)}.joined(separator: ""),terminator: "")
            reverse.removeAll()
        }
        print(i,terminator: "")
    }
    else if i == ">" || i == " "{ //괄호를 닫는것과 띄어쓰기인 경우를 같이봄
        if i == " " , a == "<" {// 괄호가 열려있는 경우 띄어쓰기를 하더라도 뒤집기를 하지 않는다
            print(i,terminator:"")
        } else {
        a = ">"
        reverse.reverse()
        print(reverse.map{String($0)}.joined(separator: ""),terminator: "")
         print(i,terminator: "")
            reverse.removeAll()}
    }else if a == "<" { //괄호가 열려있는 경우에는 그냥 출력
        print(i,terminator: "")
    }else { //문자만 들어온경우
        reverse.append(i)
    }
}

if !reverse.isEmpty { //리버스가 비어 있는 경우 즉 단어가 한줄만 나온경우
    reverse.reverse()
    print(reverse.map{$0}.joined(separator: ""),terminator: "")
}
print()
