//
//  main.swift
//  BAEKJOON-10953
//
//  Created by 김민기 on 2022/03/13.
//

//A+B를 출력하는 프로그램을 작성하시오.
//각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. A와 B는 콤마(,)로 구분되어 있다. (0 < A, B < 10)
import Foundation

for _ in 1...Int(readLine()!)!{
   
    //1번째 방법 입력을 배열로 처리하여 배열의 요소에 직접 접근
    //let input = readLine()!.map{String($0)}
    //let ans = Int(input[0])! + Int(input[2])!
   
    //2번째 방법 "," 를 기준으로 숫자만 남기고 reduce로 연산
    let input = readLine()!.split(separator: ",").map{Int(String($0))!}
    let ans = input.reduce(0){$0 + $1}
    print(ans)
}
