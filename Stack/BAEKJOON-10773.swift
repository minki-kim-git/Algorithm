//
//  main.swift
//  BAEKJOON-10773
//
//  Created by 김민기 on 2022/03/06.
//

//정수가 "0" 일 경우에는 가장 최근에 쓴 수를 지우고, 아닐 경우 해당 수를 쓴다.
//최종적으로 적어 낸 수의 합을 출력한다.
import Foundation
var arr = [Int]()
var sum = 0
for _ in 1...Int(readLine()!)!{
    let input = Int(readLine()!)!
    
    if input == 0 { //0이 나오면 pop
        arr.remove(at: arr.count-1)
    } else {
    arr.append(input)
    }
}
for i in arr {
    sum += i
}
print(sum)
