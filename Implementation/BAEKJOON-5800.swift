//
//  BAEKJOON-5800.swift
//  
//
//  Created by 김민기 on 2022/07/03.
//

// 최대 점수, 최소 점수, 점수 차이를 구하는 프로그램을 작성하시오.
//가장 높은 점수, 낮은 점수, 성적을 내림차순으로 정렬했을 때 가장 큰 인접한 점수 차이를 예제 출력과 같은 형식으로 출력한다.
import Foundation

var k = Int(readLine()!)!
for i in 1...k{
    var input = readLine()!.split(separator:" ").map{Int(String($0))!}
    let index = input[0]
    input.remove(at: 0) //제일 앞의 값은 학생수 라서 삭제
    input.sort()
    let scoreMax = input[index-1] //정렬 함수를 사용해서 제일 마지막 값이 최대
    let scoreMin = input[0] //정렬 함수를 사용해서 제일 마지막 값이 최소
    var gap = 0
    for i in 0...index-2{ //학생들의 전체 점수를 순회하여 점수의 차이가 큰 값을 저장
        let temp =  input[i] > input[i+1] ? input[i] - input[i+1] : input[i+1] - input[i]
        if temp > gap{
            gap = temp
        }
        
    }
    print("Class \(i)")
    print("Max \(scoreMax), Min \(scoreMin), Largest gap \(gap)")
}
