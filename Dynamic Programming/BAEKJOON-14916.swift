//
//  BAEKJOON-14916.swift
//  
//
//  Created by 김민기 on 2022/05/10.
//
//bottom - up
import Foundation
var input = Int(readLine()!)!
var d = Array(repeating:0,count:input+1)
d[1] = -1 //1로 나오는 경우는 거스름돈을 줄 수 없어서 -1
for i in 1...input{
    var a = 1000001
    var b = 1000001
    if i >= 5 {
        if d[i-5] == -1 {
            a = 1000001
        } else {
            a = d[i-5] + 1
        }
    }
    if i >= 2{
        if d[i-2] == -1{
            b = 1000001
        } else {
        b = d[i-2] + 1
        }
    }
    if a > b { //5의 경우와 2의 경우 중 작은 값 찾기
        d[i] = b
    } else if a < b{
        d[i] = a
    }else if a == b , a != 1000001  { //5의 경우와 2의 경우의 값이 동일하고 초깃값이 아닐때
        d[i] = a
    } else { //5의 경우와 2의 경우 둘 다 -1 이 나오면 그 값은 -1
        d[i] = -1
    }
}
print(d[input])

//top - down
//func dp(d:[Int],i:Int)->Int{
//    var d = d
//    var a = 1000001
//    var b = 1000001
//    if d[i] != 0 {
//        return d[i]
//    }
//    if i == 5 || i == 2{
//        return 1
//    }
//    if i == 1{
//        return -1
//    }
//    if i - 5 >= 0{
//        if dp(d: d, i: i-5) != -1  {
//            a = dp(d: d, i: i-5) + 1
//        }
//    }
//     if i - 2 >= 0 {
//         if dp(d: d, i: i-2) != -1  {
//             b = dp(d: d, i: i-2) + 1
//         }
//    }
//    d[i] = a < b ? a : b
//    if a == b , a == 1000001 {
//        d[i] = -1
//    }
//    return d[i]
//}
//
//var input = Int(readLine()!)!
//var d = Array(repeating:0,count:input+1)
//print(dp(d: d, i: input))
//시간초과 발생
