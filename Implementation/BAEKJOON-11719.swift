//
//  main.swift
//  BAEKJOON-11719
//
//  Created by 김민기 on 2022/03/18.
//

//입력이 주어진다. 입력은 최대 100줄로 이루어져 있고, 알파벳 소문자, 대문자, 공백, 숫자로만 이루어져 있다. 각 줄은 100글자를 넘지 않으며, 빈 줄이 주어질 수도 있고, 각 줄의 앞 뒤에 공백이 있을 수도 있다.

import Foundation
//무한반복문 탈출 구문이 없어서 런타임 에러
//while true {
//    let input = readLine()!
//    print(input)
//
//}

//가드 사용하여 break 사용
//while true {
//    guard let input = readLine() else {break}
//    print(input)
//}

//옵셔널 바인딩 해도 가능
//while true{
//    if let input = readLine() {
//        print(input)
//    } else {
//        break
//    }
//}

//입력이 들어 올때만 실행함
//이방식이 가장 간단하고 속력도 빠름
while let input = readLine() {
    print(input)
}
