//
//  BAEKJOON-14912.swift
//  
//
//  Created by 김민기 on 2022/05/15.
//

//1부터 n까지 차례대로 써 내려갈 때 특정 숫자(digit)의 빈도수를 구하여 출력하는 프로그램을 작성하시오.
import Foundation
let input = readLine()!.split(separator:" ").map{String($0)}
var count = 0
for i in 1...Int(input[0])!{
    var a = String(i).map{String($0)} // ex)i가 12 면 a에 ["1","2"]로 바꿔줌
    for j in a{
        if j == input[1] {
            count += 1
        }
    }
}
print(count)
