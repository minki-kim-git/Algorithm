//
//  main.swift
//  BAEKJOON-9020
//
//  Created by 김민기 on 2022/02/05.
//

import Foundation

//골드바흐의 추측은 유명한 정수론의 미해결 문제로, 2보다 큰 모든 짝수는 두 소수의 합으로 나타낼 수 있다는 것이다. 이러한 수를 골드바흐 수라고 한다. 또, 짝수를 두 소수의 합으로 나타내는 표현을 그 수의 골드바흐 파티션이라고 한다. 예를 들면, 4 = 2 + 2, 6 = 3 + 3, 8 = 3 + 5, 10 = 5 + 5, 12 = 5 + 7, 14 = 3 + 11, 14 = 7 + 7이다. 10000보다 작거나 같은 모든 짝수 n에 대한 골드바흐 파티션은 존재한다.

//2보다 큰 짝수 n이 주어졌을 때, n의 골드바흐 파티션을 출력하는 프로그램을 작성하시오. 만약 가능한 n의 골드바흐 파티션이 여러 가지인 경우에는 두 소수의 차이가 가장 작은 것을 출력한다.

//일단 소수를 구하는데 입력된 값보다 작은 소수를 구한다

var testCase = Int(readLine() ?? "") ?? 0

for _ in 1...testCase{
    let input = Int(readLine()!)!
    primenum(input:input)
}
func primenum(input:Int){
    var prime = Array(repeating: 1, count: input + 1)
    var count = 0
    for i in 2...input{
        prime[i] = i
    }
    for i in 2...input {
        if prime[i] == 0 {
            continue
        }
        for j in stride(from: i+i, through: input, by: i){
            prime[j] = 0
        }
    }
    
    //시간초과를 방지하기위해 prime배열을 반으로 나눠서 반으로나는 작은수가 i 큰수가 j 중간값에서 부터 input의 값을 찾아감
    for i in stride(from: prime.count/2, through: 2, by: -1){  //작은 소수부터 출력을 해줘야함  i가 j 보다 커지는 경우를 막기 위해 /2
        for j in stride(from: prime.count/2, through: prime.count - 1, by: 1){
            if prime[i] + prime[j] == input {
                print( prime[i] ,prime[j])
                count += 1   //더해나가면서  input 값과 같은값을 찾으면 count에 일을 넣으면서 break
                break
            }
        }
        if count != 0 {
            break
        }
    }
}


