//
//  BAEKJOON-10973.swift
//  
//
//  Created by 김민기 on 2022/06/20.
//

//10973
//이전 순열
//다음 순열에서 부등호만 바꾸면 됨
import Foundation
func bool(n:Int,input:[Int]){
    var i = n
    var j = n
    var ans = input
    while i > 0 && ans[i] >= ans[i-1]{
        i -= 1
    }
    if i <= 0 {
        print(-1)
        return
    }
    while ans[j] >= ans[i-1]{
        j -= 1
    }
    ans.swapAt(j, i-1)
    j = n
    while i < j{
        ans.swapAt(j, i)
        i += 1
        j -= 1
    }
    for i in 0...n{
        print(ans[i],terminator:" ")
    }
}

var n = Int(readLine()!)!
var input = readLine()!.split(separator:" ").map{Int(String($0))!}
bool(n: n-1, input: input)
