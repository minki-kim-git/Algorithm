//
//  main.swift
//  BAEKJOON-1193
//
//  Created by 김민기 on 2022/01/26.
//


//이와 같이 나열된 분수들을 1/1 → 1/2 → 2/1 → 3/1 → 2/2 → … 과 같은 지그재그 순서로 차례대로 1번, 2번, 3번, 4번, 5번, … 분수라고 하자.
//X가 주어졌을 때, X번째 분수를 구하는 프로그램을 작성하시오.


var input = Int(readLine()!)!
var count = 0, a = 0 , b = 0 , c = 0
for i in 1...input{
    count += i
    c += 1
    if count < input {
        b += i
    }
    if count >= input{
        break
    }
}
a = input - b
if c % 2 == 0 {
    for i in  0..<a {
        a = (1+i)
        b = (c-i)
    }

} else {
    for i in  0..<a {
        b = (1+i)
        a = (c-i)
    }
}
print("\(a)/\(b)")

