//
//  BAEKJOON-10972.swift
//  
//
//  Created by 김민기 on 2022/06/18.
//

import Foundation
//10972
//다음 순열 출력 문제
func bool(n:Int,input:[Int]){
    var i = n
    var j = n
    var ans = input
    while i > 0 && ans[i] <= ans[i-1]{ //뒤에서 부터 탐색
        //이전 값이 더 클때 i값지정 , i-1 의 값이 i 보다 작으면 실행 X
        i -= 1
    }
    if i <= 0 { //뒤에서 부터 이전 값이 더 클때만 있는 순열은 마지막 순열
        print(-1)
        return
    }
    while ans[j] <= ans[i-1]{ //i-1의 값 보다 그다음으로 큰 숫자 탐색
        j -= 1
    }
    ans.swapAt(j, i-1)
    j = n
    while i < j{ //
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

//ex)1234: 첫번째 while에서 실행 x -> i는 4(ans[3]) <= i -1은 3(ans[2]) X
//두번째 while 실행 x   j 4(ans[3]) <= i-1 3(ans[2]) 실행 X
//  swap( i-1 3(ans[2])  j 4(ans[3]) ) -> 1243
//세번째 while:  i  4(ans[3]) j 4(ans[3]) 실행 X

//1243: 첫번째 while에서 실행 o -> i는 3(ans[3]) <= i -1은 4(ans[2]) O
//i 는 4(ans[2])   i - 1 은  2(ans[1])

//두번째 while 실행 X   j 3(ans[3]) <= i-1 2(ans[1]) 실행 X
//  swap( i-1 3(ans[2])  j 4(ans[3]) ) -> 1342

//세번째 while:  i  3(ans[3]) j 4(ans[3]) 실행 O -> 1324
//12__의 마지막 순열은 13__의 처음 순열을 뒤집은것
//1324
