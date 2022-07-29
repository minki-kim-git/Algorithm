//
//  BAEKJOON-1417.swift
//  
//
//  Created by 김민기 on 2022/07/29.
//
//1417
//다솜이가 매수해야하는 사람의 최솟값을 출력하는 프로그램을 작성하시오
import Foundation

var n = Int(readLine()!)!
var num = [Int]()
var da = Int(readLine()!)!
for _ in 1..<n{
    let input = Int(readLine()!)!
    num.append(input)
}
var count = 0
if num.count == 0 || num.max()! < da {
    print(0)
} else {
    //최대값을 빼주고 다솜이를 1씩 추가
while true {
    num[num.firstIndex(of: num.max()!)!] -= 1
    da += 1
    count += 1
    if num.max()! < da {
        break
    }
        
}
print(count)
}
