import UIKit

var array = [6,3,4,1,2,5]

func mergesort(arr: [Int] ,start : Int ,mid:Int, end: Int){
    var sort = Array(repeating: 0, count: array.count)
    var i = start
    var j = mid + 1
    var k = 0 //sort 배열의 인덱스 번호
    //배열 비교하는거
    //start <= mid :시작부터 중간까지
    //j <= end : 중간 +1 부터 끝까지
    while i <= mid && j <= end  {
        if arr[i] <= arr[j] {
            sort[k] = arr[i]
            k += 1
            i += 1
        } else {
            sort[k] = arr[j]
            k += 1
            j += 1
        }
    }
    //i쪽에 남아있으면
    while i <= mid {
        sort[k] = arr[i]
        k += 1
        i += 1
    }
    //j쪽에 남아있으면
    while j <= end{
        sort[k] = arr[j]
        k += 1
        j += 1
    }
    k -= 1 //
    //sort값에 있는 값을 arr에 대입
    while k >= 0 {
        array[start + k ] = sort[k]
        k -= 1
    }


}
func merge(arr:[Int],start:Int,end:Int){
    if start < end {
        let mid = start + end / 2
        //start + (end-1) / 2

        //분할 하는 부분
        merge(arr: arr, start: start, end: mid)
        merge(arr:arr, start: mid + 1 , end: end)

        //정복 하는 부분
        mergesort(arr: arr, start: start, mid: mid, end: end)
    } else {
        return
    }
}
merge(arr: array, start: 0, end: array.count-1)
print(array)
