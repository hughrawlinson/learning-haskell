# Not A Fan
Parts of the Haskell learning curve are very __very__ frustrating. I've decided to document these in the hopes that when people write tutorials they can attempt to mitigate these frustrations. In all honesty, learning haskell is so frustrating that at one point I closed my computer, threw my monitor off my desk, and (I'm somewhat ashamed to admit this), started crying.

If your response to this is that "Hugh are stupid", I am not interested in your input.

I may be the only one to find it this frustrating, and I would absolutely have quit by now if I didn't have to pass my degree. On the other hand, maybe I'm not the only one, in which case these observations are actually useful. 

Also, this should be totally obvious, but just in case: I'm not saying that anything that Haskell does is wrong, I'm just saying that it's really not clear to me or sufficiently addressed in the tutorial I'm using.

* `where` is for defining bindings for use in the main body of expressions. It took me a while to figure out that you can only use it in function declarations because "obviously putting it in global scope doesn't make sense". Why that's obvious, I cannot fathom.
* The recursion and memoization debacle. So I was under the impression that one of the great advantages of haskell was the fact that because functions behave mathematically, i.e. every valid parameter must produce a result (except when you raise an error, and I don't see why that doesn't defeat the whole purpose), the program can automatically store the result of any function parameter pair. It therefore seems reasonably logical to me that when you call `map fib [0..100]`, it wouldn't recompute the entire fibbonacci sequence for each element of the list. __**WRONG!!!!!!!!!**__ Apparently neither the compiler nor runtime can tell that the thing it's computing now will be used in the very very near future, and therefore the garbage collector deletes the result once it's been returned. You have to do the memoization yourself. The argument for that is obviously memory usage. That argument seems weird to me because a) at runtime it can tell ahead of time exactly how much memory it'll take, and decide whether to optimize for speed or for space (except maybe not because lazy evaluation), and b) it can set a maximum size on the memory allocated for memoization based on the environment (except it can't because purity maybe?) which seems not totally wrong?
* You can write guards inline but don't because it doesn't look nice. They're happy to define in the language that you can't use `where` in the global scope, but not to define syntax for guards? Ok I guess...
* You can use Fractionals in list comprehensions but don't because rounding errors. Why is it allowed then? What's the use case it's valid for?
* Write some functions as infix using backticks because it reads nicely, like `z :: (Num p, Fractional q, Ord r, Ord p) => ([Char]->[([Char],p,q)])->r->Int->Zebra`.
* Not telling me til half way through the tutorial that functions can only internally have one argument is not useful because I establish the rules about functions in my mind only for them to be shat on. Not only does it feel really patronizing, but until you know that type signatures are infuriating.
* This doesn't work because something about you can't reconcile the output of a call to `mod` with the Eq operator because Integrals aren't part of the Eq typeclass because [they lost me]
  ```haskell
multipleOfFive a
  | a `mod` 5 == 0 = True
  | otherwise = False
```
* `foldl (\acc x -> acc + x) 0 take 100 [0..]`: Apparently in this case you have to make this a function after defining the type signature. WHY?! Why the fuck can GHCI not just fucking evaluate this fucking expression.

Generally, dripfeeding me information doesn't really work for me. I realise that's part of my learning style and not a universal problem, but it definitely contributed to my problem. It feels like my middle school science teacher when he said "Oxygen and Hydrogen bond to form wa ... [silence] ...ter". Not "form ... water", form wa...ter".

Another small note that should probably be an open letter to the author and publisher: Learn You A Haskell For Great Good has some really bizzare and inappropriate code samples including:

```haskell
bmiTell :: (RealFloat a) => a -> String  
bmiTell bmi  
    | bmi <= 18.5 = "You're underweight, you emo, you!"  
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise   = "You're a whale, congratulations!"  
```

and

```haskell
ghci> filter (`elem` ['A'..'Z']) "i lauGh At You BecAuse u r aLL the Same"  
"GAYBALLS"  
```

These were really jarring to see in an otherwise relatively appropriately toned programming language tutorial.
