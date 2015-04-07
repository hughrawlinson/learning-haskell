# Types and Typeclasses

## Believe The Type
* Haskell has a static type system
* The type of every expression is known at compile time
* If you try and do an operation with two incompatible types, or the wrong types, there will be a compile error
* This is part of why everyone goes on about how Haskell is so great
* Haskell has type inference, it infers types from literals (and other context, like type definitions of functions that variables get passed to)
* use `:t` in GHCI to examine the type of an expression
* `::` in type definitions is read as 'has type of'
* an example of a type definition is as follows
 * `hugh'sFunction :: a -> a`
 * `hugh'sFunction` takes an argument of any type, and returns a value of that same type
* In type declarations, parameters are seperated with `->`.
* There are no distinctions between the parameters and the return type.
* The return type is the last item in the list.
* The reason for this is mentioned in a later chapter, Higher Order Functions

### Common Types
* `Int`
 * Integer, it's bounded
* `Integer`
 * Unbounded integer
* `Float`
 * Single precision floating point number
* `Double`
 * Double precision floating point number
* `Bool`
 * Boolean
* `Char`
 * A single character

* String is another way of writing `[Char]`, a list of Chars

### Type variables
* Types can be used algebraicly, which is handy for polymorphism.
* You can give types names like 'a','b','c',etc.
* In a type signature you can use this property to write type sigs like
 * a -> a
 * to denote a function that takes a parameter of any type and returns a value of that same type

## Typeclasses 101
_Is that like Room 101?_
* There are types, specific types of individual expressions, and typeclasses, sets of types with given properties
* For example, `Int` and `Float` are in the `Num` typeclass, which means they can do the various set of things that the `Num` typeclass says they can like arithmetic.

### Basic Typeclasses
* `Eq`, for types that support equality testing
 * Its members implement the `==` and `/=` functions
* `Ord`, for types that have an order
 * `Ord` types have to be in `Eq` too
 * they additionally support comparison functions
  * `>`, `<`, `>=` and `<=`
* `Show`, whose members can be presented as strings by calling the `show` function
* `Read`, members can be read from strings into other types. They implement the `read` function
 * `read` gets the output type based on the context. If there is no context you can set it as follows
  * `read "5" :: Int`
* `Enum` members are sequentially ordered, they can be enumerated.
 * They implement the `succ` and `pred` functions
* `Bounded` members have an upper and lower bound
 * You can use `minBound` and `maxBound` to get their minimum and maximum bounds
 * `minBound :: Int`
* `Num` is a numeric typeclass. Its members act like numbers
 * Integers are polymorphic constants, they can act like any member of the Num typeclass (like Floats)
 * `(5 :: Int) * (6 :: Integer)` breaks, but `5 * (6 :: Integer)` does not because 5 can be inferred as an Integer
* `Integral` is a numeric type that only supports integral numbers (i.e. `Int` and `Integer`)
* `Floating` only supports floating point numbers.
* You can have multiple class constraints in a type signature