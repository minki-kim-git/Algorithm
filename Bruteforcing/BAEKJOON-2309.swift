//
//  BAEKJOON-2309.swift
//  
//
//  Created by 김민기 on 2022/06/05.
//

import Foundation
var len = [Int]()
var ans = [Int]()
for _ in 0...8{
    let input = Int(readLine()!)!
    len.append(input)
}
var sum = 0
for i in 0...7{
    for j in i+1...8{
         sum = 0
        for k in 0...8{
            if k == i || k == j { //i,j 두개를 뺀 나머지만 계산
                continue
            }
            sum += len[k]
            ans.append(len[k])
        }
        if sum == 100{
            break
        }
        ans.removeAll()
    }
    if sum == 100{
        break
    }
    
}
//버블 정렬
for i in 0...6{
    var temp = 0
    for j in 0...6{
        if ans[i] < ans[j]{
            temp = ans[i]
            ans[i] = ans[j]
            ans[j] = temp
        }
    }
}
for i in 0...6{
    print(ans[i])
}
