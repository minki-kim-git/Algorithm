//
//  main.swift
//  BAEKJOON-11726
//
//  Created by 김민기 on 2022/04/21.
//
//11726
//2×n 크기의 직사각형을 1×2, 2×1 타일로 채우는 방법의 수를 구하는 프로그램을 작성하시오.
//d[n] = 2 * n
//d[n] = d[n-1] + d[n-2]
//맨 오른쪽이 세로 한개거나 가로 두개거나
//top down
import Foundation
//
//func dp(n:Int)->Int{
//    if n == 1 { return 1}
//    if n == 2 { return 3}
//    if d[n] != 0 { return d[n]}
//    d[n] = ( dp(n: n - 1) + dp(n: n - 2)) % 10007
//    return d[n]
//}
//var input = Int(readLine()!)!
//var d = Array(repeating: 0, count: 1001)
//print(dp(n: input))


//bottom up
var input = Int(readLine()!)!
var d = Array(repeating: 0, count: 1001)
d[1] = 1
d[2] = 2
if input >= 3 {
for i in 3...input{
    //정수가 너무 커져서 10007의 나머지로
    d[i] = (d[i-2] + d[i-1]) % 10007 //괄호괄호괄호괄호괄호괄호괄호
}
}
print(d[input] )

//점화식 구하는게 정말 중요한듯
