//
//  main.swift
//  BAEKJOON-9095
//
//  Created by 김민기 on 2022/04/20.
//

//9095
//정수 4를 1, 2, 3의 합으로 나타내는 방법은 총 7가지가 있다. 합을 나타낼 때는 수를 1개 이상 사용해야 한다.
//점화식
//d[i] = d[i-1] + d[i-2] + d[i-3]

import Foundation
//top down
//func dp(n:Int,d:[Int]) -> Int{
//    var d = d
//    if n == 1 {return 1}
//    if n == 2 { return 2}
//    if n == 3 { return 4}
//    if d[n] != 0 { return d[n]}
//    //점화식
//    d[n] = dp(n: n-1, d: d) + dp(n: n-2, d: d) + dp(n: n-3, d: d)
//    return d[n]
//}
//
//for _ in 1...Int(readLine()!)!{
//    let input = Int(readLine()!)!
//    let d = Array(repeating: 0, count: input+1)
//    print(dp(n: input, d: d))
//}

//bottom up

//for _ in 1...Int(readLine()!)!{
//    let input = Int(readLine()!)!
//    var d = Array(repeating: 0, count: input+1)
//    d[1] = 1
//    d[2] = 2
//    d[3] = 4
//    if input > 3 {
//        for i in 4...input{
//            d[i] = d[i-1] + d[i-2] + d[i-3]
//        }
//    }
//    print(d[input])
//}

//다른 방법
for _ in 1...Int(readLine()!)!{
    let input = Int(readLine()!)!
    var d = Array(repeating: 0, count: input+1)
    d[0] = 1
    for i in 1...input{
        if i - 3 >= 0 {
            d[i] +=  d[i-3]
        }
        if i - 2 >= 0 {
            d[i] += d[i-2]
        }
        if i - 1 >= 0 {
            d[i] += d[i-1]
        }
    }
    print(d[input])
}
//top down
//func dp(i:Int,d:[Int])->Int{
//    var d = d
//    if i == 0 {
//         return 1
//     }
//    if d[i] != 0 {
//        return d[i]
//    }
//    if i > 2 {
//    return dp(i: i-1, d: d) + dp(i: i-2, d: d) + dp(i: i-3, d: d)
//    }
//   else if i == 2 {
//        return dp(i: i-1, d: d) + dp(i: i-2, d: d)
//    }
//   else if i == 1{
//        return dp(i: i-1, d: d)
//    }
//    print(d)
//    return d[i]
//}
//
//for _ in 1...Int(readLine()!)!{
//    let input = Int(readLine()!)!
//    var d = Array(repeating:0,count:input+1)
//    d[0] = 1
//    print(dp(i: input, d:d))
//}
//
