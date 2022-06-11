//
//  BAEKJOON-1107.swift
//  
//
//  Created by 김민기 on 2022/06/11.
//

import Foundation
//1107
//리모컨에는 버튼이 0부터 9까지 숫자, +와 -가 있다. +를 누르면 현재 보고있는 채널에서 +1된 채널로 이동하고, -를 누르면 -1된 채널로 이동한다. 채널 0에서 -를 누른 경우에는 채널이 변하지 않고, 채널은 무한대 만큼 있다.
//어떤 버튼이 고장났는지 주어졌을 때, 채널 N으로 이동하기 위해서 버튼을 최소 몇 번 눌러야하는지 구하는 프로그램을 작성하시오.
//지금 보고 있는 채널은 100번이다.

//번호가 고장 안나있으면 번호쓰고
//고장 나있으면 가까운 번호
//다 고장이면 + , - 로 카온트
//예외처리
//1.시작이 100 근처
//2.버튼 다 고장


//
//
//var n = Int(readLine()!)!
//
//var a = String(n).map{Int(String($0))!}
//var buttonNum = Int(readLine()!)!
//var available = [Int]()
//if buttonNum != 0 {
//var button = readLine()!.split(separator:" ").map{Int(String($0))!}
//    for i in 0...9{ //사용 가능한 버튼을 표시
//        var same = 0
//        for j in button{
//            if i == j {
//                same = 1
//                break
//            }
//        }
//        if same == 0 {
//            available.append(i)
//        }
//    }
//} else if buttonNum == 0 {
//    available = [0,1,2,3,4,5,6,7,8,9]
//}
//var minCount = 0
//var nonebroken = 1000000
//
//print(available)
//if n - 100 >= 0{ //버튼이 다 고장난 경우 처리
//minCount = n - 100
//} else {
//    minCount = 100 - n
//}
//if buttonNum == 0{
//    nonebroken = a.count
//}
//
//var plusNum = Array(repeating: -1, count: a.count)
//var minusNum = Array(repeating: -1, count: a.count)
//var ans = Array(repeating: -1, count: a.count)
//for j in available{
//    if a[0] >= j{
//        plusNum[0] = j
//    }
//    if a[0] >= j{
//        minusNum[0] = j
//    }
//    if a[0] <= j{
//        ans[0] = j
//    }
//}
//print(plusNum)
//print(minusNum)
//print(available)
//for i in 1..<a.count{
//    var maxnum = -1
//    var minnum = 10
//    for j in available{
//        if a[i] <= j{
//            maxnum = j
//        }
//        if a[i] >= j{
//            minnum = j
//        }
//    }
//    if maxnum == -1 {
//        maxnum = available[available.count-1]
//    }
//    if minnum == 10 {
//        minnum = available[0]
//    }
//        plusNum[i] = maxnum
//        minusNum[i] = minnum
//        ans[i] = maxnum
//
//}
//print(plusNum)
//print(minusNum)
//print(ans)
//var ans1 = ""
//var ans2 = ""
//var ans3 = ""
//for i in 0..<a.count{
//    if plusNum[i] == -1 {
//        ans1 = "X"
//        break
//    } else {
//        ans1 += String(plusNum[i])
//    }
//}
//    for i in 0..<a.count{
//    if minusNum[i] == -1 {
//        ans2 = "X"
//        break
//    } else {
//        ans2 += String(minusNum[i])
//    }
//}
//for i in 0..<a.count{
//if ans[i] == -1 {
//    ans3 = "X"
//    break
//} else {
//    ans3 += String(ans[i])
//}
//}
//print(ans1,ans2,ans3)
//var ans1int = 0
//var ans2int = 0
//var ans3int = 0
//var ans1Count = 0
//var ans2Count = 0
//var ans3Count = 0
//if ans1 != "X" {
//    ans1int = Int(ans1)!
//    ans1Count = plusNum.count
//    if plusNum[0] == 0 && plusNum.count > 1{
//        ans1Count -= 1
//    }
//}else if ans1 == "X"{
//    ans1int = 100000000
//
//}
//if ans2 != "X" {
//    ans2int = Int(ans2)!
//    ans2Count = minusNum.count
//    if minusNum[0] == 0 && minusNum.count > 1 {
//        ans2Count -= 1
//    }
//}  else if ans2 == "X"{
//    ans2int = 100000000
//}
//if ans3 != "X" {
//    ans3int = Int(ans3)!
//    ans3Count = ans.count
//    if ans[0] == 0 && ans.count > 1 {
//        ans3Count -= 1
//    }
//}  else if ans3 == "X"{
//    ans3int = 100000000
//}
//if ans2int >= n {
//    ans2int = ans2int - n + ans2Count
//} else {
//    ans2int = n - ans2int + ans2Count
//}
//
//if ans1int >= n {
//    ans1int = ans1int - n + ans1Count
//} else {
//    ans1int = n - ans1int + ans1Count
//}
//if ans3int >= n {
//    ans3int = ans3int - n + ans3Count
//} else {
//    ans3int = n - ans3int
//}
//print(ans1int , ans2int , ans3int , minCount , nonebroken)
////예외인 경우가 너무 많음 이런식으로 풀면 안될듯

var n = Int(readLine()!)!
var a = String(n).map{Int(String($0))!}
var buttonNum = Int(readLine()!)!
var available = [Int]()
var minCount = 0
if buttonNum != 0 {
let button = readLine()!.split(separator:" ").map{Int(String($0))!}
    for i in 0...9{ //사용 가능한 버튼을 표시
        var same = 0
        for j in button{
            if i == j {
                same = 1
                break
            }
        }
        if same == 0 {
            available.append(i)
        }
    }
} else if buttonNum == 0 {
    available = [0,1,2,3,4,5,6,7,8,9]
}

if n - 100 >= 0{ //버튼이 다 고장난 경우 처리
minCount = n - 100
} else {
    minCount = 100 - n
}

//사용가능한 버튼의 개수
func p(i:Int)->Int{
    var i = i
    if i == 0{ //이동하려는 채널이 0인 경우에는 1을 반환
        if available.contains(0){
            return 1
        } else {
            return 0
        }
    }
    var len = 0
    while i != 0{
        if available.contains(i%10){ //1의 자리수부터 사용가능한 버튼을 찾음
            //10의 자리 이상에서 사용가능한 버튼이 없으면 return 0
            len += 1
            i /= 10
        }else {
            return 0
        }
    }
    return len
}
//포문의 실행범위가 1,000,000인 이유는 채널 N의 범위가 (0 ≤ N ≤ 500,000)이다.
//버튼이 모두 고장나서 +만을 누르는 최악의 경우가 500,000 정도라서 (정확히는 100부터 시작이라서 499900)
// - 만을 누르는 경우도 합쳐서 1,000,000까지 실행
for i in 0...1000000{
    let len = p(i: i) //사용가능한 버튼의 개수
    if  len > 0 { //사용가능한 버튼의 개수가 아예 없으면 실행하지않음 -> 버튼이 다 고장난 경우에서 처리 했기 때문에 상관 없음
        if i > n { //입력보다 i값이 더커지면 -가 출력되서 반대로 빼줌
            if minCount > i - n + len{
                minCount =  i - n + len
            }
        }else {
            if minCount > n - i + len{
                minCount =  n - i + len
            }
        }
    }
}
print(minCount)

