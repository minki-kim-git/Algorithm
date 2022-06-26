//
//  BAEKJOON-14889.swift
//  
//
//  Created by 김민기 on 2022/06/27.
//

import Foundation

//14889
//스타트 팀의 능력치와 링크 팀의 능력치의 차이를 최소로 하려고 한다.
//순열을 이용하여 스타트팀과 링크팀인 경우를 각각 0,1로 나누어 경우의 수를 계산하여 차이의 최소값 구하기

func ans(per:[Int])->Int{
    var start = [Int]()
    var link = [Int]()
    var startNum = 0
    var linkNum = 0
    for i in 0..<per.count{
        if per[i] == 1{ //0이면 스타트팀
            start.append(i)
        } else if per[i] == 0{ //1이면 링크팀
            link.append(i)
        }
    }
    for i in start{ //스타트팀에서 나올수 있는경우를 다 더해줌
        for j in start{
            startNum += arr[i][j]
        }
    }
    for i in link{ //링크팀에서 나올수 있는경우를 다 더해줌
        for j in link{
            linkNum += arr[i][j]
        }
    }
    if startNum > linkNum{
        return startNum - linkNum
    }
    return linkNum - startNum
}

var n = Int(readLine()!)!
var arr = Array(repeating: Array(repeating: 0, count: 0), count: n)
var minNum = 100000000
for i in 0..<n{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    arr[i].append(contentsOf:input)
}
var per = Array(repeating: 0, count: n)
for i in 0..<n/2{ //처음순열을 n의 반만큼 1로 
    per[i] = 1
}
var temp = ans(per: per)
if temp < minNum {
    minNum = temp
}
//이전순열로 모든순열
while true {
    var i = n - 1
    var j = n - 1
    while i > 0 && per[i] >= per[i-1]{
        i -= 1
    }
    if i <= 0 {
        break
    }
    while per[j] >= per[i-1]{
        j -= 1
    }
    per.swapAt(j,i-1)
    j = n - 1
    while i < j{
        per.swapAt(i,j)
        i += 1
        j -= 1
    }
    let temp = ans(per: per)
    if minNum > temp{
        minNum = temp
    }
    if per[0] != 1 {
        break
    }
}
print(minNum)
