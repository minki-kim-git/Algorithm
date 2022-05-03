//
//  main.swift
//  BAEKJOON-1712
//
//  Created by 김민기 on 2022/01/26.
//

import Foundation

//노트북 가격이 C만원으로 책정되었다고 한다. 일반적으로 생산 대수를 늘려 가다 보면 어느 순간 총 수입(판매비용)이 총 비용(=고정비용+가변비용)보다 많아지게 된다. 최초로 총 수입이 총 비용보다 많아져 이익이 발생하는 지점을 손익분기점(BREAK-EVEN POINT)이라고 한다.
// A:고정비용 B:가변비용 C:판매비용 를 띄어쓰기로 입력을 받는다
//A+B < C 가 될 때의 C의 개수를 구하면됨
//A는 그대로 있고 B,C가 같이 늘어남

//var input = readLine()!.split(separator: " ").map{Int(String($0))!}
//var A = input[0]
//var B = input[1]
//var C = input[2]
//var count = 1
//while true {
//    if B >= C{
//                count = -1
//                break
//            }
//   else if A + B > C {
//        B *= count
//        C *= count
//        if A + B < C {
//            break
//        }
//    }
//    B=input[1];C=input[2];
//    count += 1
//}
//print(count)
//시간 초과 에러 발생

//2번째 방법
//무한 반복문을 사용하는것이 아니라 수학적으로 접근하여 간단하게 풀이 할 수 있다.
//A + B𝑥 < C𝑥 (문제는 𝐱를 구하는 문제)
//A < C𝑥 - B𝑥
//A < (C-B)𝑥
//A÷(C-B) < 𝑥 //좌변 보다 커야 하니까 +1을 더해줌
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var A = input[0]
var B = input[1]
var C = input[2]
if B >= C{ //같은 경우에도 손익분기점이 발생하지 않기 때문에 >= 을 사용해야한다.
    print(-1)
} else {
    print("\(A/(C-B)+1)") //좌변 보다 커야 하니까 +1을 더해줌
}

