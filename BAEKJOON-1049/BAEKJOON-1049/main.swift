//
//  main.swift
//  BAEKJOON-1049
//
//  Created by 김민기 on 2022/03/12.
//

//끊어진 기타줄의 개수 N과 기타줄 브랜드 M개가 주어지고, 각각의 브랜드에서 파는 기타줄 6개가 들어있는 패키지의 가격, 낱개로 살 때의 가격이 주어질 때, 적어도 N개를 사기 위해 필요한 돈의 수를 최소로 하는 프로그램을 작성하시오.
import Foundation

var testCase = readLine()!.split(separator:" ").map{Int(String($0))!}
var n = testCase[0] 
var m = testCase[1]
var package = [Int]()
var individually = [Int]()
var count = [Int]()
for _ in 0..<m{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    package.append(input[0])
    individually.append(input[1])
}
//낱개든 패키지든 최소값만 구해서 풀면된다.
var minpackage = package.min()!
var minindividually = individually.min()!
//계산이 될 수 있는 경우의 수를 배열에 저장하고 최소값 출력
if n % 6 == 0{
    count.append((n / 6) * minpackage)
} else {
    count.append((n / 6)*minpackage+((n%6)*minindividually))
}
count.append(minindividually*n)
count.append(((n/6)+1) * minpackage)
print(count.min()!)
