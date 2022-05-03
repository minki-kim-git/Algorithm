//
//  main.swift
//  BAEKJOON-2798
//
//  Created by 김민기 on 2022/02/08.
//

import Foundation

//N장의 카드에 써져 있는 숫자가 주어졌을 때, M을 넘지 않으면서 M에 최대한 가까운 카드 3장의 합을 구해 출력하시오.
//첫째 줄에 카드의 개수 N(3 ≤ N ≤ 100)과 M(10 ≤ M ≤ 300,000)이 주어진다. 둘째 줄에는 카드에 쓰여 있는 수가 주어지며, 이 값은 100,000을 넘지 않는 양의 정수이다.

//합이 M을 넘지 않는 카드 3장을 찾을 수 있는 경우만 입력으로 주어진다.

//1. m과 같은경우 2. m보다 작으면서 가장 가까운값(가장 큰 값)

var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var cardnum = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input[0]
var m = input[1]
var ans = [Int]()
var sum = 0
for i in 0..<n-2{
    for j in i+1..<n-1{
        for k in j+1..<n{
            sum += cardnum[i] + cardnum[j] + cardnum[k]
            //카드 3장의 합이기 때문에 3장의 합이 나올수 있는 모든 경우의 수를 구한다
            if sum == m  { //sum 이 m 이랑 동일하면 for문을 더실행 시킬 필요가 없이 break
                break
            }
            ans.append(sum) //sum이 m 과 같지 않다면 배열에 추과한다. m보다 작으면서 가장 가까운 수를 찾기위해서
            //print("\(cardnum[i]) + \(cardnum[j]) + \(cardnum[k]) = \(sum)")
            sum = 0
        }
        if sum == m  {
            break
        }
    }
    if sum == m  {
        break
    }
}
if sum == m {
    print(sum)
} else {
    let a = ans.filter{$0 < m} //sum의 값을 저장해뒀던 ans 배열에 filter 함수를 이용하여 m보다 작은수를 구한뒤 , 가장 큰 값을 출력
    print(a.max()!)
}

