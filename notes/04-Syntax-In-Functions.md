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
* `where` can be used in conjunction with guards
* `where` can use pattern matching
* `where` can define functions that take arguments
* `where` can be nested, because hooray readability...
* You can't use `where` on the global scope. Why? I don't know. Nobody mentioned this in the tutorial, I got very frustrated finding it out for myself.
## Let it be
* `let` is similar to where, in that you define functions in the scope of another function
* `let` has the following syntax
 * `let [bindings] in [expression]`
* All the bindings (i.e. function bindings) are visible inside but not outside of the expression in the `in` section
* You can have multiple bindings
* `let` is an expression, so it returns the value from the `in` expression
* if you're binding several variables inline, you can't use columns to seperate them, so use semicolons
 * `(let a = 100;b=200 in a\*b in a\*b\*c)`
 * You don't have to put a semicolon after the last one, but you can if you like
* You can use let inside list comprehensions
* Let bindings are local in scope, so we can't use them across guards. That's why we've got `where`.

## Case expressions
* The equivalent of switch in most imperative language, but the author insufferably says it in a way that implies \#HaskellMasterRace
* They're like switch in most languages, but with pattern matching on the result of an expression.
* Example Time:
```haskell
case ("z",4) of ("z",_) -> "The first thing was a string containing \"z\""
                (_,_,_) -> "Tuple was a triple"
```
* The expression is matched against the patterns, and the first pattern that matches the expression is used.
* If no match is found, a runtime error occurs
* Whereas pattern matching on function parameters can only be used on function definitions, case expressions can be used "pretty much" anywhere.
