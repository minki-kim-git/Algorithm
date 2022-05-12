//
//  BAEKJOON-11650.swift
//  
//
//  Created by 김민기 on 2022/05/12.
//

//x축을 기준으로 정렬 한 뒤 y축을 기준으로
import Foundation
var minusarr = Array(repeating:Array(repeating:0,count:0),count:100001)
var plusarr = Array(repeating:Array(repeating:0,count:0),count:100001)
for _ in 1...Int(readLine()!)!{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    if input[0] >= 0 { //양수의 경우
        plusarr[input[0]].append(input[1])
    } else {
        minusarr[input[0] * -1].append(input[1]) //어레이 인덱스에 - 값이 들어 갈수 없기 때문에 -1을 곱해줘서 + 형태로
    }
    
}
//음수의 경우 -가 큰것부터 출력을 해야 증가하는 순서가됨
for i in stride(from:minusarr.count-1,through:0,by:-1){
    if !minusarr[i].isEmpty{
        minusarr[i].sort()
        for j in 0..<minusarr[i].count{
            print("-\(i)",minusarr[i][j])
        }
    }
}
for i in 0..<plusarr.count{
    if !plusarr[i].isEmpty{
        plusarr[i].sort()
        for j in 0..<plusarr[i].count{
            print(i,plusarr[i][j])
        }
    }
}

//11651
//y축을 기준으로 정렬 한 뒤 x축을 기준으로
//위 문제에 index 번호와 print함수만 약간 변경해주면 됨
//var minusarr = Array(repeating:Array(repeating:0,count:0),count:100001)
//var plusarr = Array(repeating:Array(repeating:0,count:0),count:100001)
//for _ in 1...Int(readLine()!)!{
//    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
//    if input[1] >= 0 {
//        plusarr[input[1]].append(input[0])
//    } else {
//        minusarr[input[1] * -1].append(input[0])
//    }
//
//}
//for i in stride(from:minusarr.count-1,through:0,by:-1){
//    if !minusarr[i].isEmpty{
//        minusarr[i].sort()
//        for j in 0..<minusarr[i].count{
//            print(minusarr[i][j],"-\(i)")
//        }
//    }
//}
//for i in 0..<plusarr.count{
//    if !plusarr[i].isEmpty{
//        plusarr[i].sort()
//        for j in 0..<plusarr[i].count{
//            print(plusarr[i][j],i)
//        }
//    }
//}
