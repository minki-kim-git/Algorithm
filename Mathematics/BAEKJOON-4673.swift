//
//  main.swift
//  BAEKJOON-4673
//
//  Created by 김민기 on 2022/01/20.
//

import Foundation

//셀프 넘버
// 1 -> 1+ 1 = 2
// 15 =15 + 1 + 5 = 21
//151 -> 151 + 1 + 5+ 1 = 158
//1423 = 1423 + 1 + 4 + 2 + 3 = 1453

//1의 자리
//10 + 10의 자리 숫자 + 1의 자리숫자 는  = 원래값  + 원래값 / 10 + 원래값 % 10
//100 + 100의 자리 숫자 + 10의 자리 숫자 + 1의자리숫자  = 원래값 + 원래값 / 100 + (원래값 / 10) % 10 + 원래값 % 10
//1000 + 1000의 자리 숫자 + 100의 자리 숫자 + 10의 자리숫자 + 1의 자리숫자   = 원래값 + 원래값 / 1000 + (원래값 / 100) % 10 + (원래값 / 10 ) % 10
// + 원래값 % 10

var dap = Set<Int>()
for i in 1..<10000{
    dap.insert(i)
}
for i in 1..<10000{
    num(i:i)
}

func num (i: Int){
    if i < 10 {
        let ans = i + i
            dap.remove(ans)
    }
    else if i < 100 {
        let ans = i + i / 10 + i % 10
        dap.remove(ans)
    }
    else if i < 1000{
        let ans = i + i / 100 + (i / 10) % 10 + i % 10
        dap.remove(ans)
    }
    else if i < 10000{
        let ans = i + i / 1000 + (i / 100) % 10 + (i / 10) % 10 + i % 10
        dap.remove(ans)
    }
}
var sort = dap.map{$0}
sort.sort()
for i in sort{
    print(i)
}


