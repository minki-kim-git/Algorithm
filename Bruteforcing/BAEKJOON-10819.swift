//
//  BAEKJOON-10819.swift
//  
//
//  Created by 김민기 on 2022/06/21.
//
//10819
//N개의 정수로 이루어진 배열 A가 주어진다. 이때, 배열에 들어있는 정수의 순서를 적절히 바꿔서 다음 식의 최댓값을 구하는 프로그램을 작성하시오.
//|A[0] - A[1]| + |A[1] - A[2]| + ... + |A[N-2] - A[N-1]|
//식의 구하는 함수에 모든순열을 대입하여 최대값 계산
import Foundation
//식의 최대값을 구하는 함수
func ans(n:Int,arr:[Int])->Int{
    var num = 0
    for i in 0...n-2{
        if 0 <= input[arr[i]] - input[arr[i+1]]{ //절대값 처리
            num += input[arr[i]] - input[arr[i+1]]
        } else {
            num += input[arr[i+1]] - input[arr[i]]
        }
    }
    return num
}
var n = Int(readLine()!)!
var input = readLine()!.split(separator:" ").map{Int(String($0))!}
var permutations = [Int]()
for i in 0..<n{
    permutations.append(i)
}
var maxNum = ans(n: n, arr: permutations) //처음순열 계산
//모든순열계산
while true{
    var i = n - 1
    var j = n - 1
    while i > 0 && permutations[i] <= permutations[i-1]{
        i -= 1
    }
    if i <= 0 { //내림차순일때는 순열이 끝남
        break
    }
    while permutations[i-1] >= permutations[j]{
        j -= 1
    }
    permutations.swapAt(i-1, j)
    j = n - 1
    while i < j {
        permutations.swapAt(i, j)
        i += 1
        j -= 1
    }
    //모든 순열을 계산하여 ans함수에서 최대값 찾음
    let temp = ans(n: n, arr: permutations)
    if temp > maxNum{
        maxNum = temp
    }
}
print(maxNum)

