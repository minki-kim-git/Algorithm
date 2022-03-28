import UIKit

//counting sort 는 O(n)의 시간복잡도를 가지나 숫자가 작을 때 만 사용해야 효율적이다.
//카운팅 정렬은 배열의 인덱스 번호에 입력값의 숫자의 갯수 만큼 표시
//인덱스번호 순서대로 출력하고 0이 아니면 0이 될때까지 빼면서 그 인덱스 번호를 출력

//var a = [1,0,3,4,5,2,2,5]
//var count = -1
//var arr = Array(repeating: 0, count: a.max()!+1)
//var sort = Array(repeating: 0, count: a.count)
//for i in a {
//    arr[i] += 1
//}
//arr의 배열에 a의 위치를 저장
//for i in 0..<arr.count {
//    count += arr[i]
//    arr[i] = count
//}
//arr로 부터 위치를 받아와 sort를 저장
//for i in a {
//    sort[arr[i]] = i
//    arr[i] -= 1
//}
//print(sort.map{String($0)}.joined(separator:"\n"))

//arr의 값을 sort에 추가시키기 때문에 한번더 작업을 해야됨

//더 간결하고 쉬운 방식
var a = [1,0,3,4,5,2,2,5]
var arr = Array(repeating: 0, count: a.max()!+1)

//arr 인덱스 번호에 a 배열의 값의 갯수를 저장
for i in a {
    arr[i] += 1
}

for j in 0..<arr.count{
    while arr[j] != 0 { //arr의 값이 0이 아닐때
        print(j)        //그때의 arr의 인덱스 번호를 출력
        arr[j] -= 1     //번호를 한번 출력했으니 arr의 값에 -1
    }
}
