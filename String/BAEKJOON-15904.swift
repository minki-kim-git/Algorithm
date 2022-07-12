//
//  BAEKJOON-15904.swift
//  
//
//  Created by 김민기 on 2022/07/12.
//

//15904
//첫 번째 줄에 입력으로 주어진 문자열을 적절히 축약해 "UCPC"로 만들 수 있으면 "I love UCPC"를 출력하고, 만들 수 없으면 "I hate UCPC"를 출력한다.
//"?" 문자열을 찾았으면 그 다음 문자열이 나오면 추가

import Foundation

var input = readLine()!.split(separator:" ").map{String($0)}
var ans = ""
for i in input {
    let temp = i.map{String($0)}
    for i in temp {
        if ans == ""{
            if i == "U"{
                ans = "U"
            }
        } else if ans == "U"{
            if i == "C"{
                ans += "C"
            }
        } else if ans == "UC"{
            if i == "P"{
                ans += "P"
            }
        } else if ans == "UCP"{
            if i == "C"{
                ans += "C"
            }
        } else if ans == "UCPC"{
            break
        }
    }
}

ans == "UCPC" ? print("I love UCPC") : print("I hate UCPC")

