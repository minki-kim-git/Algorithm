//
//  main.swift
//  BAEKJOON-1076
//
//  Created by 김민기 on 2022/02/23.
//

//처음 색 2개는 저항의 값이고, 마지막 색은 곱해야 하는 값
//black    0    1
//brown    1    10
//red    2    100
//orange    3    1,000
//yellow    4    10,000
//green    5    100,000
//blue    6    1,000,000
//violet    7    10,000,000
//grey    8    100,000,000
//white    9    1,000,000,000
//입력으로 주어진 저항의 저항값을 계산하여 첫째 줄에 출력한다.
//딕셔너리는 별로일듯? 2차원배열로

import Foundation

var resistance = [["black","0","1"],["brown","1","10"],["red","2","100"],["orange","3","1000"],["yellow","4","10000"],["green","5","100000"],["blue","6","1000000"],["violet","7","10000000"],["grey","8","100000000"],["white","9","1000000000"]]
var color1 = readLine()!
var color2 = readLine()!
var color3 = readLine()!
var c = 0
var b = 0
var a = 0
for i in 0...9{
    //색이 입력 값과 동일하면 배열의 맞는 요소에 접근
    if color1 == resistance[i][0]  {
        a = Int(resistance[i][1])!
    }
    if color2 == resistance[i][0] {
        b = Int(resistance[i][1])!
    }
    if color3 == resistance[i][0]  {
        c = Int(resistance[i][2])!
    }
}
print("\(((a*10)+b)*c)")

