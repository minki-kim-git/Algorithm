//
//  main.swift
//  BAEKJOON- 2839
//
//  Created by 김민기 on 2022/01/28.
//

import Foundation


//봉지는 3킬로그램 봉지와 5킬로그램 봉지가 있다.
//상근이는 귀찮기 때문에, 최대한 적은 봉지를 들고 가려고 한다. 예를 들어, 18킬로그램 설탕을 배달해야 할 때, 3킬로그램 봉지 6개를 가져가도 되지만, 5킬로그램 3개와 3킬로그램 1개를 배달하면, 더 적은 개수의 봉지를 배달할 수 있다.
//상근이가 설탕을 정확하게 N킬로그램 배달해야 할 때, 봉지 몇 개를 가져가면 되는지 그 수를 구하는 프로그램을 작성하시오.

//최소의 경우의 수를 구하는 문제
//경우가 없으면 -1 출력
//N킬로그램 값을 한개 받는다.
//5부터 나누고 시작
//11을 어떻게 구하냐 5 한개 3 두개

//var input = Int(readLine()!)!
//var i = 0
//var j = 0
//var five = 0
//var three = 0
//var result = 0
//if input % 5 == 3 {
//     result = input/5 + 1
//     print(result) }
//else  {
//while i < input {
//    three += 3
//    if input % 5 == 0  {
//        result = input / 5
//        print(result)
//        break
//    }
//    while j < input{
//        five += 5
//        if three + five == input {
//            result = three/3+five/5
//            print(result)
//            break
//        }
//        j += 1
//    }
//    if result != 0 {
//        break
//    }
//    five = 0
//    j = 0
//    i += 1
//}
//}
//if result == 0 && input % 3 == 0 {
//    print(input/3)
//
//} else if  result == 0 {
//    print(-1)
//}
//너무 복잡한 코드 정리가 필요

//2번째 방법
    var input = Int(readLine()!)!
    var result = 0
    var a = 0
    if input % 5 == 0{
        result = input / 5
        print(result)
    }
    while (input >= 0)
    {
        input -= 3
        a += 1
        if input % 5 == 0{
            result = a + (input / 5)
            print(result)
        }
    }
if result == 0 {
        print(-1)
}

