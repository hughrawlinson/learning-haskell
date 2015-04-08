# Functions
Here's a list of the functions we encounter. They're all prefix functions unless specified otherwise.
## Arithmetic
* `+` (infix)
 * addition
* `-` (infix)
 * subtraction
* `*` (infix)
 * multiplication
* `/` (infix)
 * division

## Logical
* `&&` (infix)
 * logical AND
* `||` (infix)
 * logical OR
* `not`
 * logical NOT
* `==` (infix)
 * equal
* `/=` (infix)
 * not equal

## For List-ish Types
* `succ`
 * succ :: Enum a => a -> a
 * Gets the next element (successor) of an enumerable type
* `pred`
 * gets the previous element (predecessor) of an enumerable type.
* `:` cons operator (infix)
 * concatenation operator
 * no type signature in GHCI, but essentially
  * `: :: a -> [a] -> [a]`
* `++` (infix)
 * concatenation of two lists
 * like cons, except:
  * `++ :: [a] -> [a] -> [a]`
* `!!` (infix)
 * returns the nth element from a list
 * `!! :: [a] -> a -> a
* `head`
 * returns the first element of the list
* `tail`
 * returns all but the first element of the elist
* `last`
 * returns the last element of the list
* `init`
 * returns all but the last element of the list
* `length`
 * returns the length of the list
* `null`
 * checks if a list is empty
* `reverse`
 * reverses a list
* `take`
 * returns the first n elements from the beginning of the list
* `drop`
 * removes the first n elements from the beginning of the list, returns the list
* `maximum`
 * returns the largest value in the list
* `minimum`
 * returns the smallest value in the list
* `sum`
 * returns the sum of the list
* `product`
 * returns the result of multiplying all the numbers in a list together`
* `elem`
 * checks if a given element is in the list

## Ranges
* `cycle`
 * takes a list, and cycles it into an infinite list
* `repeat`
 * repeats a singleton infinitely
* `replicate`
 * repeats a singleton n times

## Tuples
* `fst`
 * takes the first element in a tuple
* `snd`
 * takes the second element in a tuple
* `zip`
 * takes two lists and produces a list of tuple pairs
 * Truncates to the shorter list

## Numeric
* `min`
 * min :: Ord a => a -> a -> a
 * returns the smaller of its two arguments
* `max`
 * returns the larger of its two arguments
* `fromIntegral`
 * Converts an expression in the typeclass `Floating` into a member of the `Num` typeclass

## Misc
* `error`
 * returns an error named with the string you passed it, crashes runtime unless you catch it