//
//  main.swift
//  BAEKJOON-1009
//
//  Created by 김민기 on 2022/03/02.
//

import Foundation
var testCase = Int(readLine()!)!
for _ in 1...testCase{
    var b : Int = 1
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    //특정수를 제곱할때 마지막 1의 자리수가 같은 패턴으로 반복되는 것을 이용하여 %4 +4를함
    for _ in 1...input[1]%4+4{ //반복문으로 제곱사용
        b = b * input[0]
        b = b%10
        //b가 Int형의 크기를 넘어설수 있기 때문에 10의 나머지를 구해줌
    }
    //10이 나올 수 있는 경우를 지정
    if b  == 0 {
        print(10)
    } else {
        print(b%10)
        
    }
}
