//
//  BAEKJOON-1759.swift
//  
//
//  Created by 김민기 on 2022/06/25.
//

//1759
//암호는 서로 다른 L개의 알파벳 소문자들로 구성되며 최소 한 개의 모음(a, e, i, o, u)과 최소 두 개의 자음으로 구성되어 있다
// 알파벳이 암호에서 증가하는 순서로 배열
//문자의 종류는 C가지

import Foundation
//모음1개이상 자음2개이상 판별하는 함수
func discrimination(ans:String)->Bool{
    var a = 0 //자음
    var b = 0 //모음
    let ans = ans.map{String($0)}
    for i in ans{
        if i == "a" || i == "e" || i == "i" || i == "o" || i == "u"  {
            a += 1
        } else{
            b += 1
        }
    }
    if a >= 1 && b >= 2{
        return true
    }
    return false
}

func printPassword(count:Int,l:Int,location:Int,ans:String){
    var ans = ans
    if l == count { //알파뱃의 개수와 암호의 개수가 동일하면 판별함수를 통해 정답판별 후 출력
        if discrimination(ans: ans){
        print(ans)
        }
        return
    }
    if location >= lc[1]{ //인덱스의 위치가 c(알파벳의 개수)를 넘으면 안된다.
        return
    }
    //특정 알파벳을 사용하는경우엔 count+1 , ans에 알파벳 추가
    printPassword(count:count+1,l:l,location:location+1,ans:ans+input[location])
    //특정 알파벳 사용하지 않는 경우
    printPassword(count:count, l: l,location:location+1,ans:ans)
    
}

var lc = readLine()!.split(separator:" ").map{Int(String($0))!}
var input = readLine()!.split(separator:" ").map{String($0)}
input.sort()
printPassword(count:0,l:lc[0], location: 0,ans:"")
//count : 알파벳의 개수
//l : 암호의 알파뱃의 개수
//location : 인덱스의 위치(중복을 피하기 위해서 필요)
//ans : 알파벳을 한개씩 추가하는 문자열
