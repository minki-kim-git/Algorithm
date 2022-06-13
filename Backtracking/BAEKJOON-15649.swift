//
//  BAEKJOON-15649.swift
//  
//
//  Created by 김민기 on 2022/06/13.
//

import Foundation
//15649
//1부터 N까지 자연수 중에서 중복 없이 M개를 고른 수열

var input = readLine()!.split(separator:" ").map{Int(String($0))!}
var ans = Array(repeating:0,count:8)
var bool = Array(repeating:false,count:9)
func a(index:Int,n:Int,m:Int){
    if m == index{ //ans는 ans[0] 부터 값이 있어서 index와 m의 값이 같아지면 m개의 길이를 만족한것이라서 출력
        for j in 0..<m{
            print(ans[j],terminator:" ")
        }
        print()
        return
    }
    for i in 1...n{ //백트래킹을 수행하기 위해 index의 범위 설정
        if bool[i] == true { //이미 사용한 자연수이면 스킵
            continue
        }
        bool[i] = true
        ans[index] = i
        a(index: index+1, n: n, m: m) //인덱스의 값을 구하고 그다음 인덱스 값을 구하는 과정 -> 백트래킹
        bool[i] = false //사용했던 값을 다시 false 상태로 두어 백트래킹
    }
}
a(index: 0, n: input[0], m: input[1])
//백트래킹 과정 예시
//4 4
//1 2 3 4
//index가 3 :ans[3] = 4가 되어 그다음 함수호출에서 index == m 이 되어 출력 후 리턴
//bool[4] = false 로 바꾼 후 함수 종료
//index가 2 : bool[3] 을 false로 바꾼 후 for문의 범위에 의해 i에 4를 실행
//bool[4] 는 false라서 index 2: ans[2] 에 4가 들어감
//그 다음 함수호출에서 ans[3]은 bool[3] : false 상태인 3이 들어감
//다시 index + 1 을 해서 다음 함수 호출에서 index == m 이되어 출력후 리턴
//bool[3] 은 다시 false 후 for 문 4 실행후 continue 하고 함수종료
//bool[4] false 후 함수 종료
//index[1] : bool[2] 함수 종료 bool[2] false
//for문 index[1] 는 bool[3]으로 실행 -> index + 1 함수호출
//index[2] 에서 bool[2] = false 라서 2들어감 -> index + 1 함수호출
//index[3] 은 bool[4] false 라서 1 3 2 4 이런식 으로 계속 반복

//1 -> 2 -> 3 -> 4
//          x    x
//1 -> 2 -> 4 -> 3
//     x    x    x
//1 -> 3 -> 2 -> 4
//          x    x
//1 -> 3 -> 4 -> 2
//     x    x    x
//1 -> 4 -> 2 -> 3
//          x    x
//1 -> 4 -> 3 -> 2
//x    x    x    x
//2 -> 1 -> 3 -> 4
