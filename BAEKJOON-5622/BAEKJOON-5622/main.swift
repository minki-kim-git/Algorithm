//
//  main.swift
//  BAEKJOON-5622
//
//  Created by 김민기 on 2022/01/22.
//

import Foundation

//2 : ABC 3
//3 : DEF 4
//4 : GHI 5
//5 : JKL 6
//6 : MNO 7
//7 : PQRS 8
//8 : TUV 9
//9 : WXYZ 10

var input = readLine()!.map{$0}
var count = 0
for i in input {
    switch i {
    case "A","B","C" :
        count += 3
        break
    case "D","E","F" :
        count += 4
        break
    case "G","H","I" :
        count += 5
        break
    case "J","K","L" :
        count += 6
        break
    case "M","N","O" :
        count += 7
        break
    case "P","Q","R","S" :
        count += 8
        break
    case "T","U","V" :
        count += 9
        break
    default:
        count += 10
    }
}
print(count)
