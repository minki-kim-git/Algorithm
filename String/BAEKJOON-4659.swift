//
//  BAEKJOON-4659.swift
//  
//
//  Created by 김민기 on 2022/07/20.
//
//4659
//모음(a,e,i,o,u) 하나를 반드시 포함하여야 한다.
//모음이 3개 혹은 자음이 3개 연속으로 오면 안 된다.
//같은 글자가 연속적으로 두번 오면 안되나, ee 와 oo는 허용한다.

import Foundation
var vowel = ["a","e","i","o","u"]

func printAns(input:String) -> String{
    var consonantCount = 0 //자음의 연속개수
    var vowelCount = 0 //모음의 연속개수
    var allVoewlCount = 0 //모음의 총 개수
    var econtinuity = 0 //"e" 문자의 연속개수
    var ocontinuity = 0 //"o" 문자의 연속개수
    let str = input.map{String($0)}
    var overlap = ""
    for i in str {
        if i == overlap { //연속적으로 오는 문자 처리
            if i == "e" { //e , o 는 두번만 올 수있다
                econtinuity += 1
            }else if i == "o" {
                ocontinuity += 1
            } else {
                return "<\(input)> is not acceptable."
            }
            if econtinuity == 2 || ocontinuity == 2{
                return "<\(input)> is not acceptable."
            }
        } else {
            econtinuity = 0
            ocontinuity = 0
        }
        //모음의 연속 개수 처리
        if vowel.contains(i){
            vowelCount += 1
            allVoewlCount += 1
            consonantCount = 0
            if vowelCount == 3{
                return "<\(input)> is not acceptable."
            }
        } else { //자음의 연속 개수 처리
            consonantCount += 1
            vowelCount = 0
            if consonantCount == 3{
                return "<\(input)> is not acceptable."
            }
        }
        
        overlap = i
    }
    //모음이 한개라도 있는지 
    if  allVoewlCount == 0{
        return "<\(input)> is not acceptable."
    }
    return "<\(input)> is acceptable."
}

while let input = readLine() {
    if input == "end" {
        break
    }
    print(printAns(input: input))
}

