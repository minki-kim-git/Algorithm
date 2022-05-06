//
//  main.swift
//  BAEKJOON-1181
//
//  Created by 김민기 on 2022/02/25.
//

//알파벳 소문자로 이루어진 N개의 단어가 들어오면 아래와 같은 조건에 따라 정렬하는 프로그램을 작성하시오.

//길이가 짧은 것부터
//길이가 같으면 사전 순으로
//단, 같은 단어가 여러 번 입력된 경우에는 한 번씩만 출력한다.

//import Foundation

//리버스 해놓고 카운트 비교해서 자리바꾸기
//var sort = Set<String>()
//var arr = [String]()
//var testCase = Int(readLine()!)!
//for _ in 0..<testCase{
//    let input = readLine()!
//    sort.insert(input)
//}
//for i in sort{
//    arr.append(i)
//}
//arr = arr.sorted()
//var temp = ""
//for _ in 0...arr.count - 2 { // 뒤의 요소를 비교 할 떄 +1을 해줘서 범위를 하나 작게 설정
//    for j in 0...arr.count - 2{
//        if arr[j].count > arr[j+1].count {   //전 요소와 뒤의 요소를 비교하여 더 작은수를 앞으로 보냄
//            temp = arr[j]
//            arr[j] = arr[j+1]
//            arr[j+1] = temp
//        }
//    }
//}
//for i in 0..<arr.count{
//    print(arr[i])
//}
//시간초과

//카운팅 정렬 개념 활용
import Foundation
var str = Array(repeating:Array(repeating:"",count:0),count:51)
for _ in 1...Int(readLine()!)!{
    let input = readLine()!
    let count = String(input).map{String($0)}
    str[count.count].append(input) //입력의 길이 만큼 배열에 추가
    
}
for i in 0...50{
    if !str[i].isEmpty{
        str[i].sort()  //정렬
        var a = ""
        for j in str[i]{
            if a == j{ //중복된 값을 확인
               a = j //j값이 바뀔 때 마다 a의 값도 같이 변경
            }else {
                print(j)
                a = j
            }
        }
    }
}

