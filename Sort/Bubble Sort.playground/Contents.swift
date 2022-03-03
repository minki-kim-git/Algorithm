//버블 정렬
//시간 복잡도 : O(n^2)
//정렬 알고리즘 중에서 느리지만 간단하다
//옆에 있는 값과 비교해서 앞으로 보낸다

import UIKit
var arr = [12,6,5,2,4,7,1,8,9,3,10,11]
var temp = 0
for _ in 0...arr.count-2{
    for j in 0...arr.count-2{
        if arr[j] > arr[j+1] {
//            temp = arr[j]
//            arr[j] = arr[j+1]
//            arr[j+1] = temp
            arr.swapAt(j, j+1) //swap메서드 사용하면 코드줄일수있다.
        }
    }
}
print(arr)
