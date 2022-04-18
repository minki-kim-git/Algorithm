//
//  main.swift
//  BAEKJOON-17103
//
//  Created by 김민기 on 2022/04/18.
//
//17103
//골드바흐의 추측: 2보다 큰 짝수는 두 소수의 합으로 나타낼 수 있다.
//짝수 N을 두 소수의 합으로 나타내는 표현을 골드바흐 파티션이라고 한다. 짝수 N이 주어졌을 때, 골드바흐 파티션의 개수를 구해보자. 두 소수의 순서만 다른 것은 같은 파티션이다.
import Foundation
var prime = [Int]()
var bool = Array(repeating: false, count: 1000000)
for i in 2..<bool.count{
    if bool[i] == false {
        prime.append(i)
    }
    for j in stride(from: i*2, to: bool.count, by: i){
        bool[j] = true
    }
}
bool[1] = true //1이 소수로 판정되기 때문에 true로 변경
func part(input : Int,bool:[Bool])->Int{
    //bool값이 변경되기 때문에
    var bool = bool
    var count = 0
    for i in 0..<prime.count{
        //입력값이 소수의 값보다 커지면 갯수 세는거 멈춤
        if input < prime[i]{
            return count
        }
        //ex)입력이 8인경우 8-3=5 //입력값에 소수를 뺏을 때, 소수가 나오면 카운트
        if bool[input-prime[i]] == false {
            count += 1
           //ex) 8 의 경우에는 3+5 하나인데 5+3도 나오기 때문에 true로 변경
            bool[prime[i]] = true
        }
    }
    return count
}
for _ in 1...Int(readLine()!)!{
    let input = Int(readLine()!)!
    print(part(input: input,bool:bool))
}
