//
//  BAEKJOON-11866.swift
//  
//
//  Created by 김민기 on 2022/07/01.
//

import Foundation
var input = readLine()!.split(separator:" ").map{Int(String($0))!}
var arr = Array(repeating:1,count:input[0]) //값을 삭제하면 0 아니면 1
var count = 0
var ans = [Int]()
var index = 0
while arr.contains(1){ //1이 포함되어 있으면 계속 실행
    for i in index..<input[0]{
        if arr[i] == 1{
        count += 1
        }
        if count == input[1]{
            count = 0
            arr[i] = 0 //세번째는 제거해서 0으로
            ans.append(i+1) //0부터 시작해서 +1 해주기
            index = i //다음 인덱스를 i로 ex) 1 2 3(X) 3부터 시작하게끔 구현
            break
            } else {
                index = 0 //다시 처음부터 순회하기
            }
    }
}
print("<",terminator:"")
for i in 0..<ans.count-1{
    print(ans[i],terminator:", ")
}
print("\(ans[ans.count-1])>",terminator:"")
