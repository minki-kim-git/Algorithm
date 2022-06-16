//
//  BAEKJOON-15651.swift
//  
//
//  Created by 김민기 on 2022/06/16.
//

import Foundation
//15651
//1부터 N까지 자연수 중에서 M개를 고른 수열
//같은 수를 여러 번 골라도 된다.
//수열은 사전 순으로 증가하는 순서로 출력해야 한다.
//bool을 2차원 배열로 만들어서 중복이 되게끔 사용

//func a(index:Int,n:Int,m:Int){
//    if index == m {
//        for i in 0..<m{
//            print(ans[i],terminator:" ")
//        }
//        print()
//        return
//    }
//    for i in 1...n{
//        if bool[index][i] == true{
//            continue
//        }
//        bool[index][i] = true
//        ans[index] = i
//        a(index: index+1, n: n, m: m)
//        bool[index][i] = false
//    }
//}
//
//var input = readLine()!.split(separator:" ").map{Int(String($0))!}
//var bool = Array(repeating:Array(repeating:false, count: 10),count:10)
//var ans = Array(repeating: 0, count: 10)
//a(index: 0, n: input[0], m: input[1])
//시간초과

func a(num:Int,index:Int,n:Int,m:Int){
    if index == m {
        for i in 0..<m{
            print(ans[i],terminator:" ")
        }
        print()
        return
    }
    if num > n{
        return
    }

    ans[index] = num
    a(num: 1, index: index+1, n: n, m: m)
   // a(num: num, index: index+1, n: n, m: m)
    ans[index] = 0
    a(num: num+1, index: index, n: n, m: m)


}

var input = readLine()!.split(separator:" ").map{Int(String($0))!}
var ans = Array(repeating: 0, count: 10)
a(num: 1, index: 0, n: input[0], m: input[1])


//func a(index:Int,n:Int,m:Int){
//    if index == m {
//        for i in 0..<m{
//            print(ans[i],terminator:" ")
//        }
//        print()
//        return
//    }
//    for i in 1...n{
//        ans[index] = i
//        a(index: index+1, n: n, m: m)
//    }
//}
//
//var input = readLine()!.split(separator:" ").map{Int(String($0))!}
//var bool = Array(repeating:Array(repeating:false, count: 10),count:10)
//var ans = Array(repeating: 0, count: 10)
//a(index: 0, n: input[0], m: input[1])

//세개 다 시간초과 나옴 print 함수 문제인듯
