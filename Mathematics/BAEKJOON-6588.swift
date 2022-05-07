//
//  main.swift
//  BAEKJOON-6588
//
//  Created by 김민기 on 2022/04/12.
//

//골드바흐의 추측
//각 테스트 케이스에 대해서, n = a + b 형태로 출력한다. 이때, a와 b는 홀수 소수이다. 숫자와 연산자는 공백 하나로 구분되어져 있다. 만약, n을 만들 수 있는 방법이 여러 가지라면, b-a가 가장 큰 것을 출력한다. 또, 두 홀수 소수의 합으로 n을 나타낼 수 없는 경우에는 "Goldbach's conjecture is wrong."을 출력한다.
//에라토스테네스의 체 사용
//func printPrimeSum(pri:[Int],input:Int){
//    for i in pri{
//        for j in pri.reversed() {
//            if i + j == input{
//                return print("\(input) = \(i) + \(j)")
//            } else if i + j < input{
//                break
//            }
//        }
//    }
//    return print("Goldbach's conjecture is wrong.")
//
//
//}
//func prime(n:Int){
//    var bool = Array(repeating: false, count: n+1)
//    var primenum = [Int]()
//    for i in 2...n{
//        if bool[i] == false{
//            primenum.append(i)
//        }
//        for j in stride(from: i*2, through: n, by: i) {
//            bool[j] = true
//        }
//    }
//    printPrimeSum(pri: primenum,input: n)
//}
//
//while let input = readLine(){
//    if Int(input)! == 0 {
//        break
//    }
//    prime(n: Int(input)!)
//}
//시간초과뜸

//새로운 값이 들오 올때마다 에라토스테네스의 체를 쓰는데 그 과정을 한번만하게 바꿈
//func printPrimeSum(pri:[Int],input:Int){
//    for i in pri{
//        for j in pri.reversed() {
//            if i + j == input{
//                return print("\(input) = \(i) + \(j)")
//            } else if i + j < input {
//                break
//            }
//        }
//    }
//    return print("Goldbach's conjecture is wrong.")
//}
//var bool = Array(repeating: false, count: 1000001)
//var primenum = [Int]()
//for i in 2...1000000{
//    if bool[i] == false{
//        primenum.append(i)
//    }
//    for j in stride(from: i*2, through: 1000000, by: i) {
//        bool[j] = true
//    }
//}
//while let input = readLine(){
//    if Int(input)! == 0 {
//        break
//    }
//    let num = primenum.filter{$0 < Int(input)!}
//   printPrimeSum(pri: num, input: Int(input)!)
//}
//여전히 시간초과뜸

//더하는 과정을 바꾸거나
//func printPrimeSum(pri:[Int],input:Int){
//    var sum = [Int]()
//    for i in pri{
//        sum = pri.filter{$0 == input - i}
//        if !sum.isEmpty{
//            return print("\(input) = \(i) + \(sum[0])")
//        }
//    }
//    return print("Goldbach's conjecture is wrong.")
//}
//var bool = Array(repeating: false, count: 1000001)
//var primenum = [Int]()
//for i in 2...1000000{
//    if bool[i] == false{
//        primenum.append(i)
//    }
//    for j in stride(from: i*2, through: 1000000, by: i) {
//        bool[j] = true
//    }
//}
//while let input = readLine(){
//    if Int(input)! == 0 {
//        break
//    }
//    let num = primenum.filter{$0 < Int(input)!}
//   printPrimeSum(pri: num, input: Int(input)!)
//}

//정답
//import Foundation
//var bool = Array(repeating: false, count: 1000001)
//var primenum = [Int]()
//for i in 2...1000000{
//    if bool[i] == false{
//        primenum.append(i)
//    }
//    for j in stride(from: i*2, through: 1000000, by: i) {
//        bool[j] = true
//    }
//}
//while let input = readLine(){
//    if Int(input)! == 0 {
//        break
//    }
//    for i in 0...Int(input)!{
//        //소수인 경우 bool array에서 false로 저장되있다
//        //가장 작은 수부터 입력값과 뺀 값이 소수인 false가 나오면 그것이 답이 된다.
//        if bool[Int(input)! - primenum[i]] == false {
//            print("\(input) = \(primenum[i]) + \(Int(input)! - primenum[i])")
//            break
//        }
//    }
//}

//함수사용
func printPrimeSum(input:Int){
    for i in 0...input{
        if bool[input - primenum[i]] == false {
            return print("\(input) = \(primenum[i]) + \(input - primenum[i])")
        }
    }
     return print("Goldbach's conjecture is wrong.")
}
var bool = Array(repeating: false, count: 1000001)
var primenum = [Int]()
for i in 2...1000000{
    if bool[i] == false{
        primenum.append(i)
    }
    for j in stride(from: i*2, through: 1000000, by: i) {
        bool[j] = true
    }
}
while let input = readLine(){
    if Int(input)! == 0 {
        break
    }
   printPrimeSum(input: Int(input)!)
}

//정리
//1.에라토네스의 체는 한번만 백만까지
//2.더하는 과정을 입력값인 n일때 a(소수 p)를 선택하면 b는 n-p 이다
