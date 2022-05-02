//
//  main.swift
//  BAEKJOON-1931
//
//  Created by 김민기 on 2022/05/02.
//

//var room = [[Int]]()
//for _ in 1...Int(readLine()!)!{
//    var input = readLine()!.split(separator:" ").map{Int(String($0))!}
//    room.append(input)
//}
//var arr = [Int]()
//for i in 0..<room.count{
//    var count = 1
//    var b = room[i][1]
//    for j in 0..<room.count{
//        var c = room[j][0]
//        var d = room[j][1]
//        if b <= c{
//            b = d
//            count += 1
//        }
//    }
//    arr.append(count)
//}
//print(arr.max()!)
//이중포문을 돌려서 시간초과 나옴

//시작 시간부터 정렬하고
//var room = [[Int]]()
//for _ in 1...Int(readLine()!)!{
//    var input = readLine()!.split(separator:" ").map{Int(String($0))!}
//    room.append(input)
//}
//var arr = [Int]()
//for i in 0..<room.count{
//    var count = 1
//    var b = room[i][1]
//    for j in 0..<room.count{
//        var c = room[j][0]
//        var d = room[j][1]
//        if b <= c{
//            b = d
//            count += 1
//        }
//    }
//    arr.append(count)
//}
//print(arr.max()!)

//끝 시간을 기준으로 정렬
import Foundation
var room = Array(repeating:Array(repeating:0,count:0),count:8388608)
var a = -1
var count = 0
for _ in 1...Int(readLine()!)!{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    room[input[1]].append(input[0]) //끝 시간을 기준으로 비교
}
for i in 0...8388607{
    room[i].sort()
    if !room[i].isEmpty{
        if a == -1 { //처음으로 회의하는 경우를 구함
            a = i
            count += 1
        }
        else if a <= room[i][0] {
            a = i
            count += 1
        }
        //똑같은 경우 처리 : 1 10 / 10 10 같은 경우
        if room[i].count >= 2{
            for k in 1..<room[i].count{
                if a <= room[i][k] {
                    a = i
                    count += 1
                }
            }
        }
    }
}
print(count)
