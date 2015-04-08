# Syntax in Functions

## Pattern Matching
* Consists of specifying patterns to which data should conform
* Like function overloading in imperative languages like Java
* Example
 * ```
   lucky :: (Integral a) => a -> String
	 lucky 7 = "Yes"
	 lucky x = "No"
   ```
 * In the preceeding example, the function will return `"Yes"` if the argument is 7
 * Otherwise, it will fall through to the next pattern, and return `"No"`
* Patterns are tried in sequential order, the first satisfied match will be used
* If there is no catchall at the end, Haskell will return an error called `Non exhaustive patterns in function`
* You can implement functions that call themselves. This is recursion, and we will come back to it.
* Pattern matching can be used with tuples and lists to grab specific elements of the list
 * `addVectors (x1,y1) (x2,y2) = (x1+x2,y1+y2)`
 * `sum' [x:xs] = x + sum' xs`
  * __Remember, you would also have so specify `sum' [] = 0` as an edge condition for the recursion__
 * When you're pattern matching on lists, you can use `all@(x:xs)` for `all` to refer to the entire list, `x` to refer to the head of the list, and `xs` to refer to the tail of the list
* `\_` is used for arguments you don't want in the pattern match.

## Guards, guards!
* Guards are like patterns, but with expressions that resolve to true or false rather than whether the input matches a pattern
* Their syntax is as follows:
 * ```
   lucky x
	  | x == 7 = "Yes"
		| otherwise = "No"
	 ```
* Again, the first one to evaluate to true gets executed
* The `otherwise` keyword is defined as `otherwise = True`, so it always matches to true
* "This is reminiscent of a big if else tree in imperative languages, only this is far better".
 * Author can fuck right off with the "Haskell Master Race" bullshit.
* There is no `=` after the function name and parameters before the guard.
* Guards can be written inline, but like, could you not?

__Aside: Notes can be defined as well as called as infix using backticks. Sometimes it's easier to read them that way.__

## Where!?
* Lets you define scoped functions that are visible inside the main function
* Example time!
 * ```
   lucky x
	  | modSeven == 0 = "Yes"
		| otherwise = "No"
		where modSeven = mod x 7
		      anotherParam = mod x 89
	 ```
 * As you can see, multiple definitions using `where` are possible
* Where can be used in conjunction with guards
