//
//  main.swift
//  BAEKJOON-2581
//
//  Created by 김민기 on 2022/01/30.
//

import Foundation

//자연수 M과 N이 주어질 때 M이상 N이하의 자연수 중 소수인 것을 모두 골라 이들 소수의 합과 최솟값을 찾는 프로그램을 작성하시오.

//예를 들어 M=60, N=100인 경우 60이상 100이하의 자연수 중 소수는 61, 67, 71, 73, 79, 83, 89, 97 총 8개가 있으므로, 이들 소수의 합은 620이고, 최솟값은 61이 된다.
//M이상 N이하의 자연수 중 소수인 것을 모두 찾아 첫째 줄에 그 합을, 둘째 줄에 그 중 최솟값을 출력한다.

//단, M이상 N이하의 자연수 중 소수가 없을 경우는 첫째 줄에 -1을 출력한다.

let m = Int(readLine() ?? "" ) ?? 0
let n = Int(readLine() ?? "" ) ?? 0
var sum = 0
var a = 0
var fisrt = 0
for i in m...n{
    if i == 1 {
    } else if i == 2{
        sum += 2
        fisrt += 2
    } else {
    for j in 2..<i - 1{
        if i % j == 0 {
            a += 1
            }
        }
        if a == 0 {
            if sum == 0 {
                fisrt += i
            }
            sum += i
        }
        a = 0
}
}
if sum == 0 {
    print(-1)
} else {
    print(sum)
    print(fisrt)
}

