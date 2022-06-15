//
//  BAEKJOON-15650.swift
//  
//
//  Created by 김민기 on 2022/06/14.
//

import Foundation

//15650
//1부터 N까지 자연수 중에서 중복 없이 M개를 고른 수열
//고른 수열은 오름차순이어야 한다.

//func a(index:Int,n:Int,m:Int){
//    if index == m+1{
//        for i in 1...m{
//            print(ans[i],terminator:" ")
//        }
//        print()
//        return
//    }
//    for i in 1...n{
//        if bool[i] == true{
//            continue
//        }
//        if ans[index-1] > i { //이전의 ans 값과 비교해서 작으면 컨티뉴
//            continue
//        }
//        bool[i] = true
//        ans[index] = i
//        a(index: index+1, n: n, m: m)
//        bool[i] = false
//    }
//
//}
//var input = readLine()!.split(separator:" ").map{Int(String($0))!}
//var n = input[0]
//var m = input[1]
//var ans = Array(repeating:0,count:10)
//var bool = Array(repeating:false,count:10)
//a(index: 1, n: n, m: m) //index -1 을 하여 비교하기 때문에 1부터시작

//다른 방법
//index의 다음 값을 지정해주는 방식
func a(index:Int,nextNum:Int,n:Int,m:Int){
    if index == m{
        for i in 0..<m{
            print(ans[i],terminator:" ")
        }
        print()
        return
    }
    if nextNum > n { //nextNum이 for문의 범위가 벗어나면 리턴
        return
    }
    for i in nextNum...n{
        ans[index] = i
        a(index: index+1,nextNum: i+1,n: n, m: m)
    }
}
var input = readLine()!.split(separator:" ").map{Int(String($0))!}
var n = input[0]
var m = input[1]
var ans = Array(repeating:0,count:10)
a(index: 0,nextNum:1,n: n, m: m)



//다른 방법 위의 방법은 시간복잡도 O(n!)으로 문제에 따라 시간초과 발생가능
//O(2^n)의 방법이 있다
// num 은 1부터 n까지의 자연수
//index는 num 값을 포함하나 안하나 표시
//func a(num:Int,index:Int,n:Int,m:Int){
//    if index == m{
//        for i in 0..<m{
//            print(ans[i],terminator:" ")
//        }
//        print()
//        return
//    }
//    if num > n{ //자연수를 계속 더해주기때문에 n의 범위를 넘어가는 예외처리
//        return
//    }
//    //포함하는 함수호출이 먼저 있는 이유는 반드시 1을 먼저 포함하기 때문
//    ans[index] = num //num값을 포함
//    //수열에 num값을 포함하기 때문에 index에 1을 더해줘서 다음 자연수를 찾음
//    a(num: num+1, index: index+1, n: n, m: m)
//    ans[index] = 0 //num값을 포함하지 않음
//    //수열에 현재의 자연수 num값을 포함하지 않기 때문에 자연수는 늘려주고 수열의 갯수는 유지
//    a(num: num+1, index: index, n: n, m: m)
//}
//
//var input = readLine()!.split(separator:" ").map{Int(String($0))!}
//var n = input[0]
//var m = input[1]
//var ans = Array(repeating:0,count:10)
//a(num: 1, index: 0, n: n, m: m)
