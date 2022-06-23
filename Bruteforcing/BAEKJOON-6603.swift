//
//  BAEKJOON-6603.swift
//  
//
//  Created by 김민기 on 2022/06/23.
//

//6603
//순열을 사용하여 사용한 숫자는 1 사용하지 않은 숫자는 0 으로 하여 0 과 1의 순열을 만든다.
//ex) 1234567 -> 1111110    출력: 123456
//오름차순으로 표시하여야 하기 때문에 이전순열 사용
import Foundation
while true {
    var input = readLine()!.split(separator:" ").map{Int(String($0))!}
    if input[0] == 0{ //종료조건
        break
    }
    let k = input[0]
    input.remove(at: 0) //순열과 갯수를 맞추기위해 k를 삭제
    var a = Array(repeating: 0, count: k)
    for i in 0...5{ //순열 만들어주기 1,0 으로 이루어져있음
        a[i] = 1
    }
    for i in 0...5{ //마지막 순열
        print(input[i],terminator:" ")
    }
    print()
    //이전 순열 구하는 방식으로 모든 순열을 구해줌
    while true{
        var i = k - 1
        var j = k - 1
        while i > 0 && a[i-1] <= a[i]{
            i -= 1
        }
        if i <= 0 {
            break
        }
        while a[j] >= a[i-1]{
            j -= 1
        }
        a.swapAt(i-1, j)
        j = k - 1
        while i < j{
            a.swapAt(i, j)
            i += 1
            j -= 1
        }
        for i in 0..<k{
            if a[i] == 1{
            print(input[i],terminator:" ")
            }
        }
        print()
    }
    print()
}






