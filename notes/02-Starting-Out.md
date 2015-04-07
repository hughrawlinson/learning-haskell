# Starting Out

## Ready Set Go

### Repl Commands
* Command for Haskell repl is `ghci`.
* Set ghci prompt with `:set prompt "<prompt string>"`

### Simple Arithmetic
* works as expected (+ - * /)
* infix operators
* precedence is as in mathematical notation, including parentheses
* negative numbers must be surrounded by parentheses

### Boolean Algebra
* Operators
 * `&&` = AND
 * `||` = OR
 * `not` = NOT
* Testing for equality
 * `==` = equals
 * `/=` = not equal

### Type System
* Strict typing
 * No type coercion (except ints to floats, but not floats to ints)

## Baby's First Functions

### Functions
* are usually prefix, i.e. \[function\] \[arg\], but can be infix, i.e. \[arg1\] \[function\] \[arg2\].
* I'm going to keep a list of functions we encounter in another file, functions.md.
* You can't start function names with a capital letter, that's reserved for typeclasses

#### Defining
* In files, they are just written:
 * `doubleMe x = x + x`
* In the repl, they must be passed to `let`
* Multiple arguments are handled like so
 * `addThree x y z = x + y + z`
* GHC can usually infer the type signature of functions
* Sometimes you have to specify the type signature
* _To load a file in ghci, type `:l [filename.hs]` inside the repl_

### Conditionals
* Haskell supports `if`, `then`, and `else`.
 * If is actually an expression, so it must return something.
 * Because of this, it has to have an `else`.
 * Syntax is:
  * `if [condition] then [true block] else [false block]`

### Prime
* The apostrophe character (`'`), read as "prime", denotes a strict version of a function
* or a slightly modified version of a function or variable.
* the `'` character is a valid character in functions
 * Therefore, `danielO'Donnel = "idiot"`

## An intro to lists
* List literals are written with the following common syntax:
 * `[4,8,16,32,64,128,256]`
* Lists cannot contain mixed types
* Lists can contain other lists
* Lists can be appended to and split, and filtered
 * i.e. the length can change
* variables of type String are internally represented as a list of Chars
 * Therefore `String` and `[Char]` are equivalent
* List literal syntax is syntactic sugar for
 * `4:8:16:32:64:128:256`
 * The `:` is known as the 'cons operator', does concatenation of singletons to the start of lists
 * `++` is for concatenation of two lists
 * `!!` returns the value at the nth index of a list
* Because of lazy evaluation, lists can be of infinite length
* more functions in functions.md

## Texas Ranges
* Instead of writing `[1,2,3,4,5]`, write `[1..5]`
* Infinite lists can be written as `[0..]`
* The jump (default is 1) can be specified by setting the first two numbers
 * `[1,3..41]` (the odd numbers between and including 1 and 41)
 * The jump must be constant, i.e. you can't do `[1,2,4..40]`
 * Ranges can be used on any enumerable type.
 	* ['a'..'z']
* You can technically use floating points in ranges, but don't because floating point errors.
* More functions in functions.md
## List Comprehensions
* A way of generating complex lists
* Syntax:
 * `[function | x <- list, predicate]`
* The function is applied to the list where x is the current value in the list
* The predicate filters the list before it gets passed to the function
  * The predicate is basically a function for `filter`, a -> Bool
* There can be multiple predicates
* There can be multiple lists, i.e.
 * `[x*y|x<-[0..],y<-[2..]]`
* It is convention to use an `_` character when you don't use the element in your function
 * This is also the case for function declarations
## Tuples
* Tuples are like lists, they contain sets of data
* Syntax for tuple literals
 * `(x, y, z)`
* They can be of any length, but they and their lengths are immutable after instantiation
* They can contain mixed types, i.e:
 * `("String",'c',3,4.3)`
* Each tuple is its own type, for example the type of the above example is:
 * `([Char],Char,Int,Float)`
* Tuples can go inside lists
* Lists can go inside tuples
* While there are singleton lists, `[1]`, there are no singleton tuples
