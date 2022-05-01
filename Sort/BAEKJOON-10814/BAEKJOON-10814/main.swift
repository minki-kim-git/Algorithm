//
//  main.swift
//  BAEKJOON-10814
//
//  Created by 김민기 on 2022/05/01.
//

//회원들을 나이가 증가하는 순으로, 나이가 같으면 먼저 가입한 사람이 앞에 오는 순서로 정렬하는 프로그램을 작성하시오.

//import Foundation
//
//var sort = [Int]()
//var compare = [[String]]()
//for _ in 1...Int(readLine()!)!{
//    let input = readLine()!.split(separator: " ").map{String($0)}
//    compare.append(input)
//    sort.append(Int(input[0])!)
//}
//sort = sort.sorted()
//for i in sort {
//    for j in 0..<sort.count {
//        if String(i) == compare[j][0] {
//            print(compare[j][0],compare[j][1])
//            compare.remove(at: j)
//            break //배열을 삭제를 하기 때문에 break를 해주지 않으면 범위에서 벗어나 오류 발생
//        }
//    }
//}
//시간초과뜸
//1:1로 비교해서 그런듯

//첫째 줄부터 총 N개의 줄에 걸쳐 온라인 저지 회원을 나이 순, 나이가 같으면 가입한 순으로 한 줄에 한 명씩 나이와 이름을 공백으로 구분해 출력한다.
//카운팅 정렬의 개념으로 풀이
import Foundation
var name =  Array(repeating:Array(repeating:"",count:0), count: 201)
for _ in 0..<Int(readLine()!)!{
    let input = readLine()!.split(separator:" ").map{String($0)}
    name[Int(input[0])!].append(input[1]) //name 배열에 추가
}
for i in 1..<name.count{
    for j in 0..<name[i].count{
        if name[i][j] != ""{ //초기값을 "" 로 설정해줘서 ""가 아니면 출력
            print(i,name[i][j])
        }
    }
}
