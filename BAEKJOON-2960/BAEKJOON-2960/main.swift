//
//  main.swift
//  BAEKJOON-2960
//
//  Created by 김민기 on 2022/04/11.
//

//에라토네스의 체
//이 알고리즘은 다음과 같다.
//2부터 N까지 모든 정수를 적는다.
//아직 지우지 않은 수 중 가장 작은 수를 찾는다. 이것을 P라고 하고, 이 수는 소수이다.
//P를 지우고, 아직 지우지 않은 P의 배수를 크기 순서대로 지운다.
//아직 모든 수를 지우지 않았다면, 다시 2번 단계로 간다.
//N, K가 주어졌을 때, K번째 지우는 수를 구하는 프로그램을 작성하시오.

import Foundation
var input = readLine()!.split(separator:" ").map{Int(String($0))!}
var prime = Array(repeating: 1, count: input[0]+1)
//array는 0부터 시작이라서 1을 더해줘야 됨
var count = 0
func printPrime(){
    for i in 2..<prime.count{
        if prime[i] != 0 {
            //prime의 개수에 1을 더해줘서 through 대신에 to를 사용
            for j in stride(from: i, to: prime.count, by: i) {
                //이미 지어진 경우에는 개수를 세지 않기 때문에
                if prime[j] == 1 {
                    prime[j] = 0
                    count += 1
                    //K번재 지우는 수를 개수를 세서 정답출력
                    if count == input[1] {
                        return print(j)
                    }
                }
            }
        }
    }
}
printPrime()

//에라토네스의 체
//import Foundation
//
//var prime = [Int]()//Array(repeating: 0, count: 100)
//var pn = 0
//var check  = Array(repeating: false, count: 101)
//var n = 100
//for i in 2...n{
//    if check[i] == false {
////        pn += 1
////        prime[pn] = i
//        prime.append(i)
//        for j in stride(from: i*2, through: n, by: i) {
//            check[j] = true
//        }
//    }
//}
//print(prime)
//print(check)
