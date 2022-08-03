//
//  BAEKJOON-1037.swift
//  
//
//  Created by 김민기 on 2022/08/03.
//


//1037
//양수 A가 N의 진짜 약수가 되려면, N이 A의 배수이고, A가 1과 N이 아니어야 한다. 어떤 수 N의 진짜 약수가 모두 주어질 때, N을 구하는 프로그램을 작성하시오.
import Foundation

var n = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var arrmin = input.min()!
var arrmax = input.max()!
//약수의 성질을 사용하여 가장 작은 약수와 가장 큰 약수를 곱하면 n을 쉽게 구할 수 있다.
print(arrmax*arrmin)
