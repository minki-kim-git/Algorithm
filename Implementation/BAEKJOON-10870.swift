//
//  main.swift
//  BAEKJOON-10870
//
//  Created by 김민기 on 2022/01/23.
//

import Foundation

//피보나치 수열
//재귀함수
//함수 재진입이 아니라 새로운 함수를 호출하는 것이다.
//그래서 종료조건을 잘설계 해야한다

//0번째 피보나치 수는 0이고, 1번째 피보나치 수는 1이다. 그 다음 2번째 부터는 바로 앞 두 피보나치 수의 합이 된다.이를 식으로 써보면 Fn = Fn-1 + Fn-2 (n ≥ 2)가 된다.n=17일때 까지 피보나치 수를 써보면 다음과 같다.0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597n이 주어졌을 때, n번째 피보나치 수를 구하는 프로그램을 작성하시오

var input = Int(readLine() ?? "") ?? 0

func fi (num : Int) -> Int {
    if num == 0{
        return 0
    } else if num == 1 {
        return 1
    } else {
        return fi(num: num - 1) + fi(num: num - 2)
    }
}
print(fi(num: input))


//var a = 0
//var b = 1
//var c = 0
//while true {
//
//    c = a + b
//    print(a,b,c)
//    b = a
//    a = c
//
//    if c > 10 {
//        break
//    }
//}


//팩토리얼
////54321
//func a(n:Int) -> Int {
//    if n == 0 {
//        return 1
//    } else {
//        return n * a(n: n - 1 )
//    }
//}
//print(a(n:5))
