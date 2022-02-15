//
//  main.swift
//  BAEKJOON-1018
//
//  Created by 김민기 on 2022/02/12.
//

import Foundation

//체스판을 색칠하는 경우는 두 가지뿐이다. 하나는 맨 왼쪽 위 칸이 흰색인 경우, 하나는 검은색인 경우이다.
//첫째 줄에 N과 M이 주어진다. N과 M은 8보다 크거나 같고, 50보다 작거나 같은 자연수이다. 둘째 줄부터 N개의 줄에는 보드의 각 행의 상태가 주어진다. B는 검은색이며, W는 흰색이다.
// 8*8 크기는 아무데서나 골라도 된다. 지민이가 다시 칠해야 하는 정사각형의 최소 개수를 구하는 프로그램을 작성하시오.

//8x8 정사각형이고 왼쪽위칸이 B,W고 다시 칠하는 최소의 개수
//8x8 에 위치에 맞는 값을 구해
//모든경우의 수라고 생각하면 편함 그냥왼쪽위 부터 시작한다고 생각하고 밑으로 8 옆으로 8 을 보는데 W로 시작하는 경우부터 그다음에 B로 시작하는경우
//그다음은 왼쪽위에서 한칸내려와서 밑으로8옆으로 8 이런식으로 감
//더이상 내려갈칸이 없다면 왼쪽위로 올라간뒤 오른쪽으로 이동
// 가장 고칠부분이 작은 곳이 나오면 그값을 출력

var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input[0] //행
var m = input[1] //열
var arr = [[String]]()
var a = [[String]]()
var b = [String]()
var chess = [["W","B","W","B","W","B","W","B"],["B","W","B","W","B","W","B","W"],["W","B","W","B","W","B","W","B"],["B","W","B","W","B","W","B","W"],["W","B","W","B","W","B","W","B"],["B","W","B","W","B","W","B","W"],["W","B","W","B","W","B","W","B"],["B","W","B","W","B","W","B","W"]]
var chess2 =
[["B","W","B","W","B","W","B","W"],["W","B","W","B","W","B","W","B"],["B","W","B","W","B","W","B","W"],["W","B","W","B","W","B","W","B"],["B","W","B","W","B","W","B","W"],["W","B","W","B","W","B","W","B"],
 ["B","W","B","W","B","W","B","W"],
 ["W","B","W","B","W","B","W","B"]
]
var ans = [Int]()
for _ in 0..<n{ //arr에 체스판의 상태 입력 , 행만큼 입력이되어야해서 n 사용
    let a = readLine()!.map{String($0)}
    arr.append(a)
}
func discriminate(){ //한개의 8x8배열 a배열을 체스판 두가지 경우에 대하여 틀린부분의 갯수를 배열에 추가
    var count = 0
    var count2 = 0
    for i in 0...7{
        for j in 0...7{
            if chess[i][j] != a[i][j] {
                count += 1
            }
            if chess2[i][j] != a[i][j] {
                count2 += 1
            }
        }
    }
    ans.append(count)
    ans.append(count2)
}
for z in 0...m - 8 { //행이 8보다 클때 행을 탐색할떄
    for k in 0...n - 8 { //열 8보다 클때 열을 탐색할떄
        for i in k...7+k{
            for j in 0+z...7+z {
                b.append(arr[i][j]) //1행을 배열에 추가 [i][0~7]까지
            }
            a.append(b) //b에서 추가된 1행배열을 8개의 행으로
            b.removeAll() //b배열을 단순히 append 해주기때문에 다시다삭제
        }
        discriminate() //한개의 8x8배열 a배열을 비교
        a.removeAll() //a배열을 단순히 append 해주기때문에 다시다삭제
    }
}
print(ans.min()!)

