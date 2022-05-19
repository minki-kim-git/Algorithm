//
//  BAEKJOON-10844.swift
//  
//
//  Created by 김민기 on 2022/05/18.
//

//10844
//이 수는 인접한 모든 자리의 차이가 1이다. 이런 수를 계단 수라고 한다.
//첫째 줄에 정답을 1,000,000,000으로 나눈 나머지를 출력한다.

//인접한 값에 1을 더하거나 1을 빼서 그 경우의 수를 더함
// % 1000000000 하는 이유는 Int 범위를 넘기 때문에
//D[I][J] = D[I-1][J-1] + D[I-1][J+1]
//9를 더하면 10 , 0 을 빼면 -1 이 두가지 경우 예외처리
import Foundation
var input = Int(readLine()!)!
var d = Array(repeating:Array(repeating: 0, count:10),count:input+1)
d[1] = [0,1,1,1,1,1,1,1,1,1]
if input > 1{
for i in 2...input{
    for j in 0...9{
        if j == 0{ //j - 1 을 하면 음수가 나와서 예외처리
            d[i][j] = (d[i-1][j+1]) % 1000000000
        } else if j == 9 { // j + 1을 하면 10이 되어서 예외처리
            d[i][j] = (d[i-1][j-1]) % 1000000000
        } else{
            d[i][j] = (d[i-1][j-1] + d[i-1][j+1]) % 1000000000
        }
    }
}
}
var sum = 0
for k in 0...9{
    sum += d[input][k]
}
print(sum % 1000000000)
