//
//  BAEKJOON-5637.swift
//  
//
//  Created by 김민기 on 2022/07/04.
//
//5637
//단어는 알파벳(a-z, A-Z)과 하이픈(-)으로만 이루어져 있다
import Foundation

var alpa = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","x","y","z","w","-"]

var ansNum = 0
var ans = ""
while true {
    let input = readLine()!.split(separator:" ").map{String($0)}
    var temp = 0
    var count = 0
    for i in input{
        if i == "E-N-D" {
            temp = 1
            break
        }
        let lower = i.lowercased()
        let a = lower.map{String($0)}
        for i in a{
            if alpa.contains(i){
                count += 1
            }
        }
        if ansNum < count{
            ansNum = count
            ans = i
        }
    }
    if temp == 1{
        break
    }
}
print(ans.lowercased())
