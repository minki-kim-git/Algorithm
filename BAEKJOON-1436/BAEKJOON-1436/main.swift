//
//  main.swift
//  BAEKJOON-1436
//
//  Created by 김민기 on 2022/02/11.
//

import Foundation

//따라서, 숌은 첫 번째 영화의 제목은 세상의 종말 666, 두 번째 영화의 제목은 세상의 종말 1666 이렇게 이름을 지을 것이다. 일반화해서 생각하면, N번째 영화의 제목은 세상의 종말 (N번째로 작은 종말의 숫자) 와 같다.
//종말의 숫자란 어떤 수에 6이 적어도 3개이상 연속으로 들어가는 수를 말한다. 제일 작은 종말의 숫자는 666이고, 그 다음으로 큰 수는 1666, 2666, 3666, .... 과 같다.
//숌이 만든 N번째 영화의 제목에 들어간 숫자를 출력하는 프로그램을 작성하시오.
//N:6이 3개 연속이고 작은순서대로
// 6 3개 판별 O
// 작은 수대로 놓고 배열에 저장
//contains 함수 사용
//var array = [Int]()
//var input = Int(readLine()!)!
//for i in 666... {
//    let a = String(i)
//
//    let b = a.contains("666")
//    //xcode 에서는 실행가능하나 백준서는 오류 발생 , contains가 Character 문자형만 되는듯
//
//    if b == true {
//        array.append(Int(a)!)
//    }
//    if array.count == input {
//        break
//    }
//}
//print(array[input-1])


//문자한개씩 비교 하기
//var array = [Int]()
//var input = Int(readLine()!)!
//for i in 666... {
//    let a = String(i).map{$0} //a 에 i 값을 문자열로 하나씩 넣음
//    var count = 0
//    for j in a {
//        if j == "6" { //a에 값을 하나씩 6과 비교
//            count += 1
//            if count >= 3 {
//                //6이 연속으로 3개가 나온 뒤 다른 숫자가 나올 수 있기 때문에
//                // array에 추가하고 탈출
//                array.append(i)
//                break
//            }
//        } else { //6이 아닌경우에 count를 0으로
//            count = 0
//        }
//    }
//
//    if array.count == input { //array의 개수가 input 만큼 까지만 실행
//        break
//    }
//}
//print(array[input-1])


//Int로 풀이 -> 시간 훨씬 줄일수 있다.
var array = [Int]()
var input = Int(readLine()!)!
for i in 666... {
    var a = i
    var b = 0
    var count = 0
    for _ in 0... {
        b =  a % 10 //a의 나머지를 6과 비교
        if b == 6 {
            count += 1
        } else if b != 6 { //6이 연속으로 나오지 않는다면 0으로
            count = 0
        }
        if count >= 3 { //6이연속으로 3번나오면 array에 추가하고 탈출
            array.append(i)
            break
        }
        if a / 10 == 0  { //a가 일의 자리 일때 탈출
            break
        }
        a /= 10 //a가 일의 자리가 될때 까지 10으로 나눠줌
    }
    if array.count == input {
        break
    }

}
print(array[input-1])
