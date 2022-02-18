//
//  main.swift
//  BAEKJOON-1316
//
//  Created by 김민기 on 2022/01/25.
//

import Foundation

//그룹 단어란 단어에 존재하는 모든 문자에 대해서, 각 문자가 연속해서 나타나는 경우만을 말한다. 예를 들면, ccazzzzbb는 c, a, z, b가 모두 연속해서 나타나고, kin도 k, i, n이 연속해서 나타나기 때문에 그룹 단어이지만, aabbbccb는 b가 떨어져서 나타나기 때문에 그룹 단어가 아니다.
//첫째 줄에 단어의 개수 N이 들어온다. N은 100보다 작거나 같은 자연수이다. 둘째 줄부터 N개의 줄에 단어가 들어온다. 단어는 알파벳 소문자로만 되어있고 중복되지 않으며, 길이는 최대 100이다.

//우선 첫째 줄에 단어 N개를 입력 받음
// 그다음 줄부터 N개의 개수만큼 문자열을 입력함
//그룹단어를 판별 -> 1. 다 다른 알파벳만 입력 O  2.중복이 있어도 연속적으로 나오면 가능 O  {  아닌경우  중복된 알파벳이 서로 떨어져있으면 그룹단어 X  }
//그룹단어의 갯수를 출력

let num = Int(readLine()!)!
var a = num
for _ in 0..<num{
let sa = readLine()!.map{String($0)}
var idea = Set<String>()
var c = 0
var b = 0
for i in sa {
    idea.insert(i)
}
for i in idea {
    for j in sa{
        if i == j {
            if c == 2 {
                b += 1
                break
            }
            c = 1
        } else {
            if c == 1 {
                c = 2
            }
        }
    }
    c = 0
}
if b != 0 {
    a -= 1
}
}
print(a)
