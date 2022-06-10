//
//  BAEKJOON-1748.swift
//  
//
//  Created by 김민기 on 2022/06/10.
//

import Foundation

var input = Int(readLine()!)!
var count = 0

if input < 10 { //입력값이 10이하일 때, 실행
    count += input
}
for i in stride(from:7,through:0,by:-1){
    var num = 1
    for _ in 0...i{ //i 가 8번 실행 즉,1억 부터 시작
        num *= 10
    }
    if num <= input {
         let a = input - num + 1
        //ex) 520 일때, 100의 자리의 경우는 100~520 까지 -> 520 - 100 + 1
         count += a * (i + 2)
        //위에서 구한 a의 값을 자릿수에 맞춰서 곱해줌 100의 자리이면 3개의 자릿수
        input = num - 1
        //520이면 100 까지 100의 자리수를 다 계산하고 십의 자리수 계산을 위해
        //100 - 1 인 99로 변경해줌
        if i == 0 { //입력값이 10보다 크면 10이하의 1의 자리인 1~9까지의 자릿수인 9를 더해줌
            //일의 자리 예외처리
            count += 9
    }
    }

}
print(count)

//var input = Int(readLine()!)!
//var count = 0
//if input < 10 {
//    count += input
//}
//if input == 100000000{
//    input -= 1
//    count += 9
//}
//if input >= 10000000{
//    let a = input - 10000000 + 1
//    count += a * 8
//    input = 9999999
//}
//if input >= 1000000{
//    let a = input - 1000000 + 1
//    count += a * 7
//    input = 999999
//}
//if input >= 100000{
//    let a = input - 100000 + 1
//    count += a * 6
//    input = 99999
//}
//if input >= 10000{
//    let a = input - 10000 + 1
//    count += a * 5
//    input = 9999
//}
//if input >= 1000{
//    let a = input - 1000 + 1
//    count += a * 4
//    input = 999
//}
//if input >= 100{
//    let a = input - 100 + 1
//    count += a * 3
//    input = 99
//}
//if input >= 10{
//      let a = input - 10 + 1
//    count += a * 2
//    count += 9
//}
//
//print(count)
