//
//  main.swift
//  BAEKJOON-1120
//
//  Created by 김민기 on 2022/03/21.
//

//A의 앞에 아무 알파벳이나 추가한다.
//A의 뒤에 아무 알파벳이나 추가한다.
//이때, A와 B의 길이가 같으면서, A와 B의 차이를 최소로 하는 프로그램을 작성하시오.
//뭘해야되지?
//일단 갯수비교 하고 같으면 그냥 틀린 개수 출력
//다를때 : 최대한 맞게끔 매칭해서 틀린개수 출력

import Foundation
//길이가 같을 때는 각각의 인덱스 끼리 비교해서 틀린갯수 체크
func sameCount(){
    for i in 0..<a.count{
        if a[i] != b[i] {
            count += 1
        }
    }
}
//길이가 다를 때는 a의 인덱스를 b의 인덱스와 비교
//b인덱스는 루프 한번이 돌때 마다 1씩 증가
func differentCount(){
    for k in 0...b.count-a.count{
        for j in 0..<a.count{
            if b[j+k] != a[j] {
                count += 1
            }
        }
        compare.append(count)
        count = 0
    }
    count = compare.min()!
}
var input = readLine()!.split(separator:" ").map{String($0)}
var a = input[0].map{String($0)}
var b = input[1].map{String($0)}
var count = 0
var compare = [Int]()
if a.count == b.count {
    sameCount()
} else {
    differentCount()
}
print(count)

