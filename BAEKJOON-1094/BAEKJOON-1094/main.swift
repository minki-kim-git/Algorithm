//
//  main.swift
//  BAEKJOON-1094
//
//  Created by 김민기 on 2022/03/16.
//
//처음에는 64cm 막대 하나만 가지고 있다. 이때, 합이 X보다 크다면, 아래와 같은 과정을 반복한다.
//1.가지고 있는 막대 중 길이가 가장 짧은 것을 절반으로 자른다.
//2.만약, 위에서 자른 막대의 절반 중 하나를 버리고 남아있는 막대의 길이의 합이 X보다 크거나 같다면, 위에서 자른 막대의 절반 중 하나를 버린다.
//이제, 남아있는 모든 막대를 풀로 붙여서 Xcm를 만든다.

//막대가 나올 수 있는 경우를 구하여 계산
import Foundation

var input = Int(readLine()!)!
var cm = 0
var count = 0
func mackdae(i:Int){
    let a = [64,32,16,8,4,2,1]
    for j in a {
        //막대가 입력값 보다 작을때 j를 더해준다.
        if i > cm {
            cm += j
            count += 1
        }
        //막대가 입력값 보다 클때 j를 다시 빼준다.
        if i < cm {
            cm -= j
            count -= 1
        }
        //막대와 입력값이 동일하면 출력하고 종료
        if i == cm {
            print(count)
            break
        }
    }
}
mackdae(i: input)
