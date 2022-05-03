//
//  main.swift
//  BAEKJOON-2941
//
//  Created by 김민기 on 2022/01/26.
//

import Foundation

//예를 들어, ljes=njak은 크로아티아 알파벳 6개(lj, e, š, nj, a, k)로 이루어져 있다. 단어가 주어졌을 때, 몇 개의 크로아티아 알파벳으로 이루어져 있는지 출력한다.
//dž는 무조건 하나의 알파벳으로 쓰이고, d와 ž가 분리된 것으로 보지 않는다. lj와 nj도 마찬가지이다. 위 목록에 없는 알파벳은 한 글자씩 센다.

//문자열을 입력받고 그 문자열의 알파벳의 갯수를 출력
//이 문자열을 어떻게 크로아티아 알파벳으로 구분할것이냐?
//뒤가 = 으로 끝나는 경우 , z= 과 dz= 구분
// 뒤가 - 로 끝나는 경우
//뒤가 j로 끝나고 앞에 l 과 n 이 있는 경우
//나머지 알파벳

//첫번째 방법
var input = readLine()!.map{String($0)}
var count = 0
for i in 0..<input.count {
    if input[i] == "="{
        if i > 1{
            if input[i-2] == "d" && input[i-1] == "z"{
                count -= 1
            }
        }
    } else if input[i] == "-" {
    } else if input[i] == "j" {
        if i > 0 {
            if input[i-1] == "l" || input[i-1] == "n" {
            }
         else {
            count += 1
         }}
        else {
            count += 1
        }
    }
    else {
        count += 1
    }
}
print(count)

//두번째 방법
//var input = readLine()!
//
//var count = input.count
//
//
//var arr = ["c=","c-","dz=","d-","lj","nj","s=","z="]
//
//for i in 0...arr.count-1 { //배열의 요소가 하니씩 input 문자열과 비교 됨
//    input = input.replacingOccurrences(of: arr[i] , with: "1") //문자열을 대체하는 함수   of : 지정된 문자열 , with = 변경할 문자열
//    print(input)
//}
//print(input)
//print(input.count)
