import UIKit

//10개의 요소가 있는 배열을 퀵정렬을 사용하여 정렬
var num = 5
var array = [5,2,3,1,4]

func sort(arr: [Int],start:Int,end:Int){
    if start < end {
        let p = part(arr: array, start: start, end: end)
        
        print(end,"첫번쨰",p)
        sort(arr: array, start: start, end: p-1)
        print(end,"두번쨰",p)
        sort(arr: array, start: p+1, end: end)
    }
}
func part(arr: [Int],start:Int,end:Int)->Int{
    let pivot = arr[end]
    var i = start-1
    for j in start..<end{
        if arr[j] <= pivot{
            i += 1
            
            array.swapAt(i, j)
        }
    }
    array.swapAt(i+1, end)
    print(array)
    print(i)
    return i + 1
}
sort(arr: array, start: 0, end: num-1)
print(array)
//피벗을 제일 오른쪽의 경우인 퀵정렬이라서 최악의 경우 n^2가 나와서 시간초과 나옴
