//
//  main.swift
//  BAEKJOON-1463
//
//  Created by 김민기 on 2022/04/18.
//
//X가 3으로 나누어 떨어지면, 3으로 나눈다.
//X가 2로 나누어 떨어지면, 2로 나눈다.
//1을 뺀다.
//정수 N이 주어졌을 때, 위와 같은 연산 세 개를 적절히 사용해서 1을 만들려고 한다. 연산을 사용하는 횟수의 최솟값을 출력하시오
//import Foundation
//var count = 0
//var input = Int(readLine()!)!
//var a = input
//func div3(){
//    input = input / 3
//    count += 1
//}
//func div2(){
//    input = input / 2
//    count += 1
//}
//func minus(){
//    input -= 1
//    count += 1
//}
//while true{
//    if input == 1 {
//    print(count)
//    break
//}
//if input % 3 == 0{
//    div3()
//} else if input % 3 == 2 {
//    minus()
//} else if input % 3 == 1 {
//    minus()
//} else if input % 2 == 0 {
//    div2()
//}
//}
//count = 0
//input = a
//while true{
//    if input == 1 {
//    print(count)
//    break
//}
//    if input % 2 == 0 {
//    div2()
//}
// else if input % 3 == 1 {
//    minus()
//}  else if input % 3 == 2 {
//    minus()
//}else if input % 3 == 0{
//    div3()
//}
//}
//구현하는걸로만 풀어봄 다이나믹프로그래밍으로 풀이

//다이나믹 프로그래밍으로 풀이
//top - down
//func cal(n:Int)->Int{
//    if n == 1 {
//        return 0
//    }
//    if arr[n] < 0 {
//        return arr[n]
//    }
//    arr[n] = cal(n:n-1) + 1
//    if n % 2 == 0{
//        let temp = cal(n: n/2) + 1
//        if arr[n] > temp {
//            arr[n] = temp
//        }
//    }
//    if n % 3 == 0 {
//        let temp = cal(n: n/3) + 1
//        if arr[n] > temp {
//            arr[n] = temp
//        }
//    }
//    return arr[n]
//}
//var input = Int(readLine()!)!
//var arr = Array(repeating: 0, count: input+1)
//print(cal(n: input))
//시간초과

//bottom - up
var input = Int(readLine()!)!
var arr = Array(repeating: 0, count: input+1)

if input > 1 { //반복문이 2부터 시작해서 1이 입력값이면 오류발생
for i in 2...input{
    arr[i] = arr[i-1] + 1
    if i % 2 == 0 , arr[i] > arr[i/2] + 1{
        arr[i] = arr[i/2] + 1
    }
    if i % 3 == 0 , arr[i] > arr[i/3] + 1{
        arr[i] = arr[i/3] + 1
    }
}
}
print(arr[input])

