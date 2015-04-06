main = putStrLn "Hello World!"

--fib :: Num -> Num
fib 0 = 0
fib 1 = 1
fib n = fib(n-2) + fib(n-1)

memoized_fib :: Int -> Integer
memoized_fib =
   let fib 0 = 0
       fib 1 = 1
       fib n = memoized_fib (n-2) + memoized_fib (n-1)
   in (map fib [0 ..] !!)

doubleMe x = x + x

doubleUs x y = x * 2 + y * 2

-- doubleSmallNumber x = if x > 100
-- 											then x
--											else x * 2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1


