//
//  main.swift
//  BAEKJOON-1874
//
//  Created by 김민기 on 2022/03/11.
//

//임의의 수열이 주어졌을 때 스택을 이용해 그 수열을 만들 수 있는지 없는지, 있다면 어떤 순서로 push와 pop 연산을 수행해야 하는지를 알아낼 수 있다. 이를 계산하는 프로그램을 작성하라.

import Foundation

var arr = [0] //n까지의 값을 넣는 배열
var discriminate = [String]() //+,-를 넣는 배열
var max = 1

for _ in 1...Int(readLine()!)!{
    let input = Int(readLine()!)!
    sequence(num:input)
}
printSequence(no:discriminate)

//입력값이 배열안에 값보다 크거나, 1 작은 값이 아닌 경우에 NO
func sequence(num:Int){
    if arr[arr.count-1] < num {
        for i in max...num{
            discriminate.append("+")
            arr.append(i)
        }
        //현재까지 나온 최대값
        max = arr[arr.count-1] + 1
        discriminate.append("-")
        arr.remove(at:arr.count-1)
    } else if arr[arr.count-1] == num {
        discriminate.append("-")
        arr.remove(at:arr.count-1)
    } else {
        discriminate.append("NO")
    }
}

//배열안에 no가 있으면 no를 출력
func printSequence(no:[String]){
    let a =  no.filter{$0 == "NO"}
    if a.isEmpty {
        for i in no {
            print(i)
        }
    } else {
        print("NO")
    }
}
