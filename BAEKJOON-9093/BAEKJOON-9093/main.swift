//
//  main.swift
//  BAEKJOON-9093
//
//  Created by 김민기 on 2022/03/22.
//

//단어 별 띄어쓰기를 기준으로 반대로 돌리기
import Foundation

func reverse(input : [String]){
    var arr = [String]()
    for i in input{
        arr = i.map{String($0)} //단어별로 짤라서 반대로
        arr.reverse()
        for j in arr{
            print(j,terminator: "") //출력할때 붙여쓰기
        }
        print(terminator: " ") //스페이스바 기준으로 출력
    }
    print()
}

for _ in 1...Int(readLine()!)!{
    let input = readLine()!.split(separator: " ").map{String($0)}
    reverse(input: input)
}
