//
//  main.swift
//  BAEKJOON-1065
//
//  Created by 김민기 on 2022/02/16.
//



//어떤 양의 정수 X의 각 자리가 등차수열을 이룬다면, 그 수를 한수라고 한다. 등차수열은 연속된 두 개의 수의 차이가 일정한 수열을 말한다. N이 주어졌을 때, 1보다 크거나 같고, N보다 작거나 같은 한수의 개수를 출력하는 프로그램을 작성하시오.
//1~99까지는 한수이다
//100 이상부터 그냥 단순히 한수를 n보다 적은 수까지 구하기
import Foundation
var input = Int(readLine()!)!
num(n:input)
func num (n:Int){
    var count = 0
    if n < 100 { //1~99는 어차피 다 한수라서
        print(n)
    } else {
        for i in 100...n{
            count += discrimination(i: i)
        }
        print(count + 99)
    }
}
//100이상의 한수를 판별하는 함수
func discrimination(i:Int) -> Int{
    var samenum = Set<Int>()
    var b = 0
    let a = String(i).map{Int(String($0))!}
    //반복문 i의 값을 각자리별로 나누는 배열을 만들어줌
    //123 -> 1,2,3
    for j in 0...a.count-2{
        b = a[j] - a[j+1]
        //각 자리 별 차의 크기를 구함
        samenum.insert(b)
    }
    //한수는 각차리별 크기의 차이가 같기 때문에 중복된 값은 저장하지 않는 set형식의 컬렉션타입을 만들어줌
    if samenum.count == 1 {
        return 1 //중복된 값이 없으면 한수로 리턴1을 반환
    } else {
        return 0
    }
}
