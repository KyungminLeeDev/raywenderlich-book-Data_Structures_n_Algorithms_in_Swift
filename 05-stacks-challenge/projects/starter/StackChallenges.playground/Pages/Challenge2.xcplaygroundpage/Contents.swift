// Copyright (c) 2019 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 
 ## #2. Balance Parentheses
 
 Check for balanced parentheses. Given a string, check if there are `(` and `)` characters, and return `true` if the parentheses in the string are balanced.
 ```
 // 1
 h((e))llo(world)() // balanced parentheses
 // 2
 (hello world // unbalanced parentheses
 ```
 */
var testString1 = "h((e))llo(world)()"
var testString2 = "(hello world"

/// time complexity: O(n)
/// space complexity: O(n)
func checkParentheses(_ string: String) -> Bool {
    var stack = Stack<Character>()
    
    for c in string {
        if c == "(" {
            stack.push(c)
        } else if c == ")" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
        }
    }
    
    return stack.isEmpty
}

checkParentheses(testString1) // should be true
checkParentheses(testString2) // should be false
