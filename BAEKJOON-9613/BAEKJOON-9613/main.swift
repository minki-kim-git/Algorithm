//
//  main.swift
//  BAEKJOON-9613
//
//  Created by 김민기 on 2022/04/14.
//

//양의 정수 n개가 주어졌을 때, 가능한 모든 쌍의 GCD의 합을 구하는 프로그램을 작성하시오.
import Foundation
//func gcd(a:Int,b:Int) -> Int{
//    var a = a
//    var b = b
//    var temp = 0
//    while b != 0 {
//        temp = a % b
//        a = b
//        b = temp
//    }
//    return a
//}
//재귀함수 사용
func regcd(a:Int,b:Int) -> Int{
    if b != 0 {
        return regcd(a: b, b: a % b)
    }
    return a
}
for _ in 1...Int(readLine()!)!{
    var sum = 0
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
      //이중포문을 사용하여 gcd쌍이 나오는 경우의 수를 다 순회
    for i in 1...input.count-2{
        for j in i+1...input.count-1{
              //gcd함수를 호출 하여 sum에 계속 더해줌
            sum += regcd(a: input[i], b: input[j])
        }
    }
    print(sum)
}
