//
//  main.swift
//  BAEKJOON-1406
//
//  Created by 김민기 on 2022/04/05.
//

//L    커서를 왼쪽으로 한 칸 옮김 (커서가 문장의 맨 앞이면 무시됨)
//D    커서를 오른쪽으로 한 칸 옮김 (커서가 문장의 맨 뒤이면 무시됨)
//B    커서 왼쪽에 있는 문자를 삭제함 (커서가 문장의 맨 앞이면 무시됨)
//삭제로 인해 커서는 한 칸 왼쪽으로 이동한 것처럼 나타나지만, 실제로 커서의 오른쪽에 있던 문자는 그대로임
//P $    $라는 문자를 커서 왼쪽에 추가함

//func moveLeft(){
//    if cursor > 0{
//        cursor -= 1
//        if !bStack.isEmpty{
//            aStack.append(bStack.last!)
//        bStack.removeLast()
//    }
//    }
//}
//func moveRight(){
//    if cursor < bStack.count {
//        cursor += 1
//        if !aStack.isEmpty{
//            bStack.append(aStack.last!)
//        aStack.removeLast()
//    }
//    }
//}
//func delete(){
//    if !bStack.isEmpty{
//        bStack.removeLast()
//    cursor -= 1
//    }
//}
//func insert(str:String){
//    bStack.append(str)
//    cursor += 1
//}
//
//var bStack = readLine()!.map{String($0)}
//
//var cursor = bStack.count
//
//var aStack = [String]()
////var bStack = insertString
//for _ in 1...Int(readLine()!)!{
//    let input = readLine()!.split(separator: " ").map{String($0)}
//    if input[0] == "L" {
//        moveLeft()
//    }else if input[0] == "D" {
//        moveRight()
//    }else if input[0] == "B" {
//        delete()
//    }else if input[0] == "P" {
//        insert(str : input[1])
//    }
//}
//aStack.reverse()
//print(bStack.map{$0}.joined(separator: ""))//,terminator: "")
//print(aStack.map{$0}.joined(separator: ""))
//

import Foundation
func moveLeft(){
        if !bStack.isEmpty{
            aStack.append(bStack.last!)
        bStack.removeLast()
    
    }
}
func moveRight(){
    if !aStack.isEmpty{
            bStack.append(aStack.last!)
        aStack.removeLast()
    
    }
}
func delete(){
    if !bStack.isEmpty{
        bStack.removeLast()
    cursor -= 1
    }
}
func insert(str:String){
    bStack.append(str)
    cursor += 1
}
var insertString = readLine()!.map{String($0)}

var cursor = insertString.count

var aStack = [String]()
var bStack = insertString
for _ in 1...Int(readLine()!)!{
    let input = readLine()!.split(separator: " ").map{String($0)}
    if input[0] == "L" {
        moveLeft()
    }else if input[0] == "D" {
        moveRight()
    }else if input[0] == "B" {
        delete()
    }else if input[0] == "P" {
        insert(str : input[1])
    }
}
aStack.reverse()
print(bStack.map{$0}.joined(separator: ""),terminator: "")
print(aStack.map{$0}.joined(separator: ""))
// readLine() 함수때문 시간초과나옴


