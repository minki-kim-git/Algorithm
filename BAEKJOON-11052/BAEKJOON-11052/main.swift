//
//  main.swift
//  BAEKJOON-11052
//
//  Created by 김민기 on 2022/04/23.
//
//11052
//카드 팩의 가격이 주어졌을 때, N개의 카드를 구매하기 위해 민규가 지불해야 하는 금액의 최댓값을 구하는 프로그램을 작성하시오. N개보다 많은 개수의 카드를 산 다음, 나머지 카드를 버려서 N개를 만드는 것은 불가능하다. 즉, 구매한 카드팩에 포함되어 있는 카드 개수의 합은 N과 같아야 한다.

//import Foundation
//var cardCount = Int(readLine()!)!
//var input = readLine()!.split(separator: " ").map{Int(String($0))!}
//var max = 0
//var temp = 0
//for i in 1...input.count{
//    if cardCount % i == 0 {
//        temp = max
//        max = input[i-1] * (cardCount / i)
//        if max < temp {
//            max = temp
//        }
//    }
//    for j in 1...input.count{
//        if i + j == cardCount{
//            temp = max
//            max = input[i-1] + input[j-1]
//            if max < temp {
//                max = temp
//            }
//        }
//        if (cardCount - i) % j == 0 {
//            temp = max
//            max = input[i-1] + (input[j-1] * ((cardCount - i) / j))
//            if max < temp {
//                max = temp
//            }
//        }
//    }
//}
//print(max)
//구현만으로는 어려움
//다이나믹 프로그래밍 사용

//import Foundation
//var cardCount = Int(readLine()!)!
//var input = readLine()!.split(separator: " ").map{Int(String($0))!}
//var d = Array(repeating: 0, count: cardCount+1)
//for i in 1...input.count{
//    for j in 1...i{
//        //d[i]를 메모이제이션 하면서 기존의 값인 d[i]와
//        //바뀌는 값인 d[i-j]+input[j-1] 중에 최대값을 비교해나감 마지막 d의 인덱스가 정답이됨
//        d[i] = max(d[i-j] + input[j-1],d[i])
//    }
//}
//print(d.last!)


import Foundation

func card(n:Int)->Int{
    if d[n] == 0 {
        return 0
    }
    return card(n: n-1)
}
var cardCount = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var d = Array(repeating: 0, count: cardCount+1)
print(card(n:cardCount))
