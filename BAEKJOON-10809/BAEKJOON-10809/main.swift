//
//  main.swift
//  BAEKJOON-10809
//
//  Created by 김민기 on 2022/01/25.
//

import Foundation

//알파벳 소문자로만 이루어진 단어 S가 주어진다. 각각의 알파벳에 대해서, 단어에 포함되어 있는 경우에는 처음 등장하는 위치를, 포함되어 있지 않은 경우에는 -1을 출력하는 프로그램을 작성하시오.
//각각의 알파벳에 대해서, a가 처음 등장하는 위치, b가 처음 등장하는 위치, ... z가 처음 등장하는 위치를 공백으로 구분해서 출력한다.
//만약, 어떤 알파벳이 단어에 포함되어 있지 않다면 -1을 출력한다. 단어의 첫 번째 글자는 0번째 위치이고, 두 번째 글자는 1번째 위치이다.

//첫번째 방법
//var input = readLine()!.map{String($0)}
//var alpha = [ "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
//var count = Array(repeating: -1, count: alpha.count) //알파뱃갯수만큼 -1 의 값을 가진 배열 선언
//
//for i in 0..<input.count {
//    for j in 0..<alpha.count{
//        if input[i] == alpha[j]{
//            if count[j] == -1 { //알파뱃이 처음등장하는 위치를 알리기 위해 -1일 때만 실행
//            count[j] = i
//            }
//        }
//    }
//}
//for i in count { //띄어쓰기로 출력
//    print(i,terminator: " ")
//}
//print()

//두번째 방법
let input = Array(readLine()!)
let d = Character("a").asciiValue!...Character("z").asciiValue! //캐릭터 문자형을  아스키코드의 값으로 나타냄 "a" = 97
for i in d {
     let char = Character(UnicodeScalar(i)) //UnicodeScalar을 사용하면 해당 문자를 출력한다
    if input.contains(char){ //특정 문자가 속해 있는지 boolean 값으로 반환
        print("\(input.firstIndex(of: char)!)",terminator: " ") //firstIndex(of:Character)이거는 인자로 들어온 문자가 몇번쨰 인덱스인가를
    }else{
    print("-1", terminator: " ")
    }
}
print()

