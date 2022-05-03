//
//  main.swift
//  BAEKJOON-4948
//
//  Created by 김민기 on 2022/02/03.
//

import Foundation

//입력은 여러 개의 테스트 케이스로 이루어져 있다. 각 케이스는 n을 포함하는 한 줄로 이루어져 있다.
//입력의 마지막에는 0이 주어진다.

//예를 들어, 10보다 크고, 20보다 작거나 같은 소수는 4개가 있다. (11, 13, 17, 19) 또, 14보다 크고, 28보다 작거나 같은 소수는 3개가 있다. (17,19, 23)
//자연수 n이 주어졌을 때, n보다 크고, 2n보다 작거나 같은 소수의 개수를 구하는 프로그램을 작성하시오.
// n <   ??  <= 2n

//while let input = readLine() {
//    let n = Int(input)!
//    var count = 2*n - n
//    if n == 0 {break}
//    for i in n+1...2*n{
//        for j in 2..<i{
//            if i % j == 0 {
//                count -= 1
//                break
//            }
//        }
//    }
//
//    print(count)
//} // 문제에 알맞은 답은 나오나 역시나 시간초과 나옴


func primenum(n2:Int,n:Int){
    var count = 0
    var a = Array(repeating: 1, count: n2 + 1)
    for i in 2...n2 {
        a[i] = i
    }
    for i in 2...n2{
        if a[i] == 0{
            continue
        }
        for j in stride(from: i+i, through: n2, by: i){
            a[j] = 0
        }
    }
    for i in n+1...n2{
        if a[i] != 0 {
            count += 1
        }
    }
    print(count)
}
while let input = readLine() {
    let n = Int(input)!
    let n2 = 2 * n
    if n == 0 {break}
    else if n == 1{
        print(1)
    } else {
primenum(n2: n2, n: n)
    }

}
//1의 경우를 처리하는 방법이 더 없나?

//에라토스테네스의 체
//var m = 1
//var n = 10
//var number = n;
//var a = Array(repeating: 1, count: number + 1)
//
//func primenum(){
//    for i in 2...number{  //number개의 배열 초기화
//        a[i] = i
//    }
//    for i in 2...number{
//        if a[i] == 0 {    //만약 0이면 contiune
//            continue
//        }
//        for j in stride(from: i+i, through: number, by: i){   //i의 배수를 0으로 만들어줌
//            a[j] = 0
//        }
//    }
//    for i in 2...number  {
//        if a[i] != 0 {
//            print(a[i])
//
//        }
//    }
//}
//
//primenum()
