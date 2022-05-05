//
//  main.swift
//  BAEKJOON-1475
//
//  Created by 김민기 on 2022/04/01.
//

//다솜이의 옆집에서는 플라스틱 숫자를 한 세트로 판다. 한 세트에는 0번부터 9번까지 숫자가 하나씩 들어있다. 다솜이의 방 번호가 주어졌을 때, 필요한 세트의 개수의 최솟값을 출력하시오. (6은 9를 뒤집어서 이용할 수 있고, 9는 6을 뒤집어서 이용할 수 있다.)

import Foundation
var arr = Array(repeating: 0, count: 10)
var input = readLine()!.map{Int(String($0))!}

for i in input {
    arr[i] += 1 //각 숫자의 개수
}
//괄호 괄호 괄호
//6과 9는 서로 뒤집어서 사용할 수 있기 때문에 두 수를 더해서 2로 나눠주면됨
if (arr[6] + arr[9]) % 2 == 0{
    arr[6] = (arr[6] + arr[9]) / 2
    arr[9] = 0
} else if (arr[6] + arr[9]) % 2 == 1 {
    arr[6] = (arr[6] + arr[9]) / 2 + 1 //나누어 떨어지지 않는다면 +1 을 해줘야함
    arr[9] = 0
}
print(arr.max()!)
