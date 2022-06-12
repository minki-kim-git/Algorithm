//
//  BAEKJOON-14500.swift
//  
//
//  Created by 김민기 on 2022/06/12.
//

import Foundation

//14500
//테트로미노 하나를 적절히 놓아서 테트로미노가 놓인 칸에 쓰여 있는 수들의 합을 최대로 하는 프로그램을 작성하시오.

var input = readLine()!.split(separator:" ").map{Int(String($0))!}
var paper = Array(repeating:Array(repeating: 0, count: 0),count:input[0])
var n = input[0]
var m = input[1]
for i in 0..<n{
    let input = readLine()!.split(separator:" ").map{Int(String($0))!}
    paper[i].append(contentsOf: input)
}
var maxSum = 0
//첫번째 도형 가로로 일자
for i in 0..<n{
    for j in 0...m-4{
        var sum = 0
        for k in j...j+3{
            sum += paper[i][k]
        }
        if sum > maxSum{
            maxSum = sum
        }
    }
}
//첫번째 도형 세로로 일자
for i in 0..<m{
    for j in 0...n-4{
        var sum = 0
        for k in j...j+3{
            sum += paper[k][i]
        }
        if sum > maxSum{
            maxSum = sum
        }
    }
}
//두번째 도형 정사각형모양
for i in 0..<n-1{
    for j in 0..<m-1{
        let sum = paper[i][j] + paper[i+1][j] + paper[i][j+1] + paper[i+1][j+1]
       // print(i,j,sum)
         if sum > maxSum{
            maxSum = sum
        }
    }
}

//세번째 도형 새로로 세운거 (세로로 긴모양)
for i in 0..<n-2{
    for j in 0..<m-1{
        //세번째 도형 1. L 모양
        let a = paper[i][j] + paper[i+1][j] + paper[i+2][j] + paper[i+2][j+1]
        //세번째 도형 2. L 대칭 반대 모양
        let b = paper[i][j+1] + paper[i+1][j+1] + paper[i+2][j+1] + paper[i+2][j]
        //세번째 도형 3. ㄱ  모양
        let c = paper[i][j] + paper[i][j+1] + paper[i+1][j+1] + paper[i+2][j+1]
        //세번째 도형 4. ㄱ 대칭 반대 모양
        let d = paper[i][j] + paper[i][j+1] + paper[i+1][j] + paper[i+2][j]
        let maxNum = max(a,b,c,d)
         if maxNum > maxSum{
            maxSum = maxNum
        }
    }
}
//세번째 도형 가로로 눞인거 (가로로 긴모양)
for i in 0..<n-1{
    for j in 0..<m-2{
        //세번째 도형 1. L 모양
        let a = paper[i][j] + paper[i+1][j] + paper[i+1][j+1] + paper[i+1][j+2]
        
        //세번째 도형 2. L 대칭 반대 모양
        let b = paper[i+1][j] + paper[i+1][j+1] + paper[i+1][j+2] + paper[i][j+2]
//        //세번째 도형 3. ㄱ  모양
        let c = paper[i][j] + paper[i][j+1] + paper[i][j+2] + paper[i+1][j+2]
//        //세번째 도형 4. ㄱ 대칭 반대 모양
        let d = paper[i][j] + paper[i][j+1] + paper[i][j+2] + paper[i+1][j]
        let maxNum = max(a,b,c,d)
         if maxNum > maxSum{
            maxSum = maxNum
        }
    }
}
//네번째 도형 세로가 긴 모양
for i in 0..<n-2{
    for j in 0..<m-1{
        //네번째 도형 1.
        let a = paper[i][j] + paper[i+1][j] + paper[i+1][j+1] + paper[i+2][j+1]
        //print(a)
        //네번째 도형 2.
        let b = paper[i][j+1] + paper[i+1][j+1] + paper[i+1][j] + paper[i+2][j]
        
        let maxNum = max(a,b)
         if maxNum > maxSum{
            maxSum = maxNum
        }
    }
}
//네번째 가로가 긴모양
for i in 0..<n-1{
    for j in 0..<m-2{
        //네번째 도형 1.
        let a = paper[i][j] + paper[i][j+1] + paper[i+1][j+1] + paper[i+1][j+2]
        //네번째 도형 2.
        let b = paper[i+1][j] + paper[i+1][j+1] + paper[i][j+1] + paper[i][j+2]
        //print(b)
        let maxNum = max(a,b)
         if maxNum > maxSum{
            maxSum = maxNum
        }
    }
}
// 다섯번째 세로가 긴 유형
for i in 0..<n-2{
    for j in 0..<m-1{
        //다섯번째 도형 1.
        let a = paper[i][j] + paper[i+1][j] + paper[i+2][j] + paper[i+1][j+1]
        //print(a)
        //다섯번째 도형 2.
        let b = paper[i][j+1] + paper[i+1][j+1] + paper[i+2][j+1] + paper[i+1][j]
        let maxNum = max(a,b)
         if maxNum > maxSum{
            maxSum = maxNum
        }
    }
}
//다섯번째 가로가 긴 유형
for i in 0..<n-1{
    for j in 0..<m-2{
        //다섯번째 도형 1.
        let a = paper[i][j+1] + paper[i+1][j] + paper[i+1][j+1] + paper[i+1][j+2]
        //print(a)
        //다섯번째 도형 2.
        let b = paper[i][j] + paper[i][j+1] + paper[i][j+2] + paper[i+1][j+1]
        //print(b)
        let maxNum = max(a,b)
         if maxNum > maxSum{
            maxSum = maxNum
        }
    }
}
print(maxSum)

//for문의 범위가 중복되기때문에 코드를 더 줄일수도 있다.
//반복문 한개를 사용하고 조건문으로 구분할 수 도있다.
