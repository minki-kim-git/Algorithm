//
//  BAEKJOON-1755.swift
//  
//
//  Created by 김민기 on 2022/07/10.
//

import Foundation

//1755
//문제는 정수 M, N(1 ≤ M ≤ N ≤ 99)이 주어지면 M 이상 N 이하의 정수를 숫자 하나씩 읽었을 때를 기준으로 사전순으로 정렬하여 출력하는 것이다.
//앞에글자 정렬하고 두번째 글자 정렬
var num = ["zero","one","two","three","four","five","six","seven","eight","nine"]
var strans = [String]()
var ans = [Int]()
var input = readLine()!.split(separator:" ").map{String($0)}

//숫자를 문자열로 변경한 뒤 정렬
for i in Int(input[0])!...Int(input[1])!{
    if i < 10{ //1의 자리
        strans.append(num[i])
    } else { //10의 자리
        var str = ""
        let a = i / 10 //10의 자리
        let b = i % 10 //1의 자리
        str += num[a]
        str += " " //10의 자리와 1의 자리를 " " 로 나누어서 분류
        str += num[b]
        strans.append(str)
    }
}
strans.sort()

//정렬된 문자열을 다시 숫자로 변경
for i in strans{
    let nums = i.split(separator:" ").map{String($0)}
    if nums.count > 1 { //10의 자리
        let a = num.firstIndex(of: nums[0])! * 10 //10의 자리
        let b = num.firstIndex(of: nums[1])! //1의 자리
        ans.append(a+b)
    } else { //1의 자리
        ans.append(num.firstIndex(of: nums[0])!)
    }
}

//출력
var count = 0
for i in ans{
    count += 1
    print(i,terminator:" ")
    if count == 10{ //한줄에 10개씩 출력
        count = 0
        print()
    }
}
