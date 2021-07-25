/*
Implement pow(x, n), which calculates x raised to the power n (i.e., xn).

 

Example 1:

Input: x = 2.00000, n = 10
Output: 1024.00000
Example 2:

Input: x = 2.10000, n = 3
Output: 9.26100
Example 3:

Input: x = 2.00000, n = -2
Output: 0.25000
Explanation: 2-2 = 1/22 = 1/4 = 0.25
 

Constraints:

-100.0 < x < 100.0
-231 <= n <= 231-1
-104 <= xn <= 104
*/
class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var ans = 1.0
        var x = x
        var n = n
        if n < 0 {
            x = 1.0/x
            n = -n
        }
        for i in 0..<n {
            ans *= x
        }
        return ans
    }
}