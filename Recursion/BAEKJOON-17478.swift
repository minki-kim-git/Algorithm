//
//  main.swift
//  BAEKJOON-17478
//
//  Created by 김민기 on 2022/03/23.
//

//재귀함수
//재진입이 아니라 새로운 함수를 호출한다.
//1.종료조건 : 실행횟수에 맞게
//2.정의 : 재귀함수가 한번씩 실행 될때마다 __ 추가
// "재귀함수는 자기 자신을 호출하는 함수라네" 나오고 리턴


import Foundation

func printChatBot() -> Void {
    var a = ""
    for _ in 0..<count{ //카운터 갯수 만큼 _ 를 추가
        a += "____"
    }
    //입력값 만큼 실행
    if count < input{
        print(a,terminator: "")
    print("\"재귀함수가 뭔가요?\"")
        print(a,terminator: "")
    print("\"잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.")
        print(a,terminator: "")
    print("마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지.")
        print(a,terminator: "")
    print("그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어.\"")
    count += 1
    printChatBot()
    }
    //함수 호출해서 입력값 만큼 반복하고 나머지 출력
    else if count == input {
        print(a,terminator: "")
        print("\"재귀함수가 뭔가요?\"")
        print(a,terminator: "")
        print("\"재귀함수는 자기 자신을 호출하는 함수라네\"")
    }
    return  print(a,terminator:"라고 답변하였지.\n")
}

var input = Int(readLine()!)!
var count = 0

print("어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다.")
printChatBot()
