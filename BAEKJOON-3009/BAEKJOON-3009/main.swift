//
//  main.swift
//  BAEKJOON-3009
//
//  Created by 김민기 on 2022/01/31.
//

import Foundation

//세 점이 주어졌을 때, 축에 평행한 직사각형을 만들기 위해서 필요한 네 번째 점을 찾는 프로그램을 작성하시오.

// 한 축당 같은 값이 두게 나오게 끔 하면 된다

var dot1 = readLine()!.split(separator: " ").map{Int(String($0))!}
var dot2 = readLine()!.split(separator: " ").map{Int(String($0))!}
var dot3 = readLine()!.split(separator: " ").map{Int(String($0))!}

var countx = 0
var county = 0
if dot1[0] == dot2[0] {
    countx = dot3[0]
} else if dot1[0] == dot3[0] {
    countx = dot2[0]
} else {
    countx = dot1[0]
}
if dot1[1] == dot2[1] {
    county = dot3[1]
} else if dot1[1] == dot3[1] {
    county = dot2[1]
} else {
    county = dot1[1]
}
print(countx,county)
