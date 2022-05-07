//
//  main.swift
//  BAEKJOON-11365
//
//  Created by 김민기 on 2022/04/06.
//


//마지막 줄에는 "END"가 주어진다. (END는 해독하지 않는다.)

import Foundation

while let input = readLine(){ //EOF 입력이 있을 때만 와일문 실행
    if input == "END" { //END 입력시 종료
        break
    }
    for i in input.reversed(){ //입력값을 반대로 만들어줌
        print(i,terminator: "") //print 다음줄에 넘어가지 않도록 terminator 사용
    }
    print()
}
