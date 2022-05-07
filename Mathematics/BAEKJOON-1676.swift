//
//  main.swift
//  BAEKJOON-1676
//
//  Created by 김민기 on 2022/04/13.
//

//N!에서 뒤에서부터 처음 0이 아닌 숫자가 나올 때까지 0의 개수를 구하는 프로그램을 작성하시오.
//0의 개수를 구하려면 입력값을 소인수 분해하여 2*5가 나오는 갯수를 세면된다.
//5의 개수가 항상 2보다 적기때문에 5의 개수만 세주면 된다 ex)2는 2,4,6,8등
//실제로 소인수분해는 시간이 많이 걸리니 5로 나누는것으로 해결
//5의 거듭제곱인 25는 5가 한개 더 있다 5*5 라서
//125는 총 세개의 5가 들어간다 5*5*5
//문제에서 값의 범위가 500이하 이기때문에 125까지만 나눠줘도 된다.
import Foundation
//var input = Int(readLine()!)!
//var a5 = 0
//var b25 = 0
//var c125 = 0
//var sum = 0
//a5 = input / 5
//b25 = input / 25
//c125 = input / 125
//sum = a5 + b25 + c125
//print(sum)

//반복문으로 품 500이상의 값이 들어와도 구할 수 있다
var i = 1
var sum = 0
var input = Int(readLine()!)!
while 5 * i <= input{
    sum += input / (5 * i) //괄호괄호괄호괄호괄호괄호괄호괄호괄호괄호
    i *= 5
}
print(sum)
