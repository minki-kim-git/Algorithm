//
//  BAEKJOON-12605.swift
//  
//
//  Created by 김민기 on 2022/07/08.
//

import Foundation
//12605
//스페이스로 띄어쓰기 된 단어들의 리스트가 주어질때, 단어들을 반대 순서로 뒤집어라.
var n = Int(readLine()!)!
for i in 1...n{
    let input = readLine()!.split(separator:" ").map{String($0)}
    print("Case #\(i): ",terminator: "")
    //print함수는 자동으로 띄어쓰기를 하는데 terminator을 사용하여 띄어쓰기 x
    for j in stride(from:input.count-1,through:0,by:-1){ //반대 부터 출력
        print(input[j],terminator: " ")
    }
    print()
}
