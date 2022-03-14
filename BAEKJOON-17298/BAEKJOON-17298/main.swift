//
//  main.swift
//  BAEKJOON-17298
//
//  Created by 김민기 on 2022/03/14.
//

//수열의 각 원소 Ai에 대해서 오큰수 NGE(i)를 구하려고 한다. Ai의 오큰수는 오른쪽에 있으면서 Ai보다 큰 수 중에서 가장 왼쪽에 있는 수를 의미한다. 그러한 수가 없는 경우에 오큰수는 -1이다.
//예를 들어, A = [3, 5, 2, 7]인 경우 NGE(1) = 5, NGE(2) = 7, NGE(3) = 7, NGE(4) = -1이다. A = [9, 5, 4, 8]인 경우에는 NGE(1) = -1, NGE(2) = 8, NGE(3) = 8, NGE(4) = -1이다.
//음 이거를 어찌할까요?

//import Foundation
//
//var arr = [Int]()
//var testCase = Int(readLine()!)!
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//for i in 0...input.count-2{
//    for j in i+1...input.count-1{
//        if input[i] < input[j] {
//            arr.append(input[j])
//            break
//        }
//        if j == input.count-1{
//            arr.append(-1)
//        }
//    }
//}
//arr.append(-1)
//for k in 0..<testCase{
//    print(arr[k],terminator: " ")
//}
//print()
//for문을 돌리니까 1000000만 까지 가면 시간초과뜸

//import Foundation
//
//var stack = [[Int]]()
//var testCase = Int(readLine()!)!
//var arr = Array(repeating: -1, count: testCase)
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//if testCase == 1 {
//} else {
//for i in 0...input.count-2{
//    if input[i] < input[i+1] {
//        arr[i] = input[i+1]
//        if !stack.isEmpty && stack[stack.count-1][0] < input[i+1] {
//            discrimination(index:i+1)
//        }
//    } else if input[i] >= input[i+1] {
//        stack.append([input[i],i])
//    }
//}
//}
//func discrimination(index:Int){
//    for i in stack.reversed(){
//        if i[0] < input[index] {
//            arr[stack[stack.count-1][1]] = input[index]
//            stack.removeLast()
//        } else {
//            break
//        }
//    }
//}
//print(arr.map{String($0)}.joined(separator: " "))
//위 코드도 함수등 if 문 많아서 시간초과뜸

import Foundation

var stack = [Int]()
var testCase = Int(readLine()!)!
//오큰수가 없는 경우에는 -1 이 나오기 때문에 배열에 미리 -1로 초기화
var arr = Array(repeating: -1, count: testCase)
var input = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in 0...testCase-1{
    //스택에 값이 있고 오큰수가 있는 경우에 계속 반복
    while !stack.isEmpty && input[stack.last!] < input[i] {
      
        //stack에 top의 값을 불러오고 삭제 -> arr에 맞는 오큰수를 입력
        arr[stack.removeLast()] = input[i]
    }
    
    //stack에 input의 요소 번호를 추가
    stack.append(i)
    
}
print(arr.map{String($0)}.joined(separator: " "))
