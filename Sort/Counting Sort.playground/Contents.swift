import UIKit

//counting sort 는 O(n)의 시간복잡도를 가지나 숫자가 작을 때 만 사용해야 효율적이다.

var a = [1,0,3,4,5,2,2,5]
var count = -1
var arr = Array(repeating: 0, count: a.max()!+1)
var sort = Array(repeating: 0, count: a.count)
for i in a {
    arr[i] += 1
}
print(arr)
for i in 0..<arr.count {
    
    count += arr[i]
    arr[i] = count
    
    print(count)
}
print(arr)

for i in a {    
    sort[arr[i]] = i
    arr[i] -= 1
    print(arr)
}
print(sort)
