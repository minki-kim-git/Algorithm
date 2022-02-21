//
//  main.swift
//  BAEKJOON-1085
//
//  Created by 김민기 on 2022/02/03.
//


//한수는 지금 (x, y)에 있다. 직사각형은 각 변이 좌표축에 평행하고, 왼쪽 아래 꼭짓점은 (0, 0), 오른쪽 위 꼭짓점은 (w, h)에 있다. 직사각형의 경계선까지 가는 거리의 최솟값을 구하는 프로그램을 작성하시오.

import Foundation

var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var x = input[0]
var y = input[1]
var w = input[2]
var h = input[3]

var resultX = 0
var resultY = 0
if  w - x < x {
    resultX = w - x
}
    else {
        resultX = x
}
if  h - y < y {
    resultY = h - y
}
    else {
        resultY = y
}
resultY > resultX ? print(resultX) : print(resultY)
