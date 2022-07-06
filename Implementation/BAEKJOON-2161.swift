//
//  BAEKJOON-2161.swift
//  
//
//  Created by 김민기 on 2022/07/06.
//

//N이 주어졌을 때, 버린 카드들을 순서대로 출력하고, 마지막에 남게 되는 카드를 출력하는 프로그램을 작성하시오.
import Foundation
var input = Int(readLine()!)!
var arr = [Int]()
var ans = [Int]()
for i in 1...input{ //input개의 카드 만큼의 배열생성
    arr.append(i)
}
var index = 0
while arr.count > 1{
    ans.append(arr[index])
    arr.remove(at: index) //제일 첫 카드 삭제
    arr.append(arr[index]) //다음 카드 마지막으로 이동 후
    arr.remove(at: index)//다음 카드 삭제
}
ans.append(arr[0])
for i in ans {
    print(i,terminator:" ")
}

