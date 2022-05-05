//
//  main.swift
//  BAEKJOON-1924
//
//  Created by 김민기 on 2022/04/01.
//


// 참고로 2007년에는 1, 3, 5, 7, 8, 10, 12월은 31일까지, 4, 6, 9, 11월은 30일까지, 2월은 28일까지 있다.
//첫째 줄에 x월 y일이 무슨 요일인지에 따라 SUN, MON, TUE, WED, THU, FRI, SAT중 하나를 출력한다.


import Foundation

var day = [0,31,28,31,30,31,30,31,31,30,31,30,31]
var w = ["SUN","MON","TUE","WED","THU","FRI","SAT"]
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var date = 0
//달 만큼 날짜 더함
for i in 1..<input[0]{
    date += day[i]
}
//달 만큼 날짜를 더하고 나머지 요일을 더해줌
date += input[1]
//총 날짜에 7일의 나머지를 구하면됨
date = date % 7

print(w[date])
