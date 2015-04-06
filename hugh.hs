a :: [Char] -> [Char]
a x = 'a':tail x

removeNonUppercase :: String -> String
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int  
addThree x y z = x + y + z

-- head :: [Char] -> Char


g :: Num a => a -> a -> a
g x y = (x^2) * (y^5)

lucky :: Integral a => a -> String
lucky 7 = "You're lucky, you got the right number"
lucky x = "You didn't get the right number, try again"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

anvilhack :: String -> String
anvilhack "anvil" = "hack"
anvilhack "hack" = "anvil"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1+x2, y1+y2)

--midPoint :: Num a => Floating b => (a, a) -> (a, a) -> (b, b)
--midPoint (x1, y1) (x2, y2) = ((x1 + x2)/2, (y1 + y2)/2)

first :: (a, b, c) -> a  
first (x, _, _) = x  
  
second :: (a, b, c) -> b  
second (_, y, _) = y  
	  
third :: (a, b, c) -> c  
third (_, _, z) = z 

xs = [(1,2), (2,4)]
-- [a+b | (a,b) <- xs]

head' :: [a] -> a
head' [] = error "Can't call head on an empty list"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "This list is empty"
tell (x:[]) = "This list has only one element"
tell (x:y:[]) = "This list has only two elements"
tell (x:y:_) = "This list has more than two elements"

length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
  where (f:_) = firstname
        (l:_) = lastname

cylinder :: (RealFloat a) => a -> a -> a
cylinder radius height =
  let sideArea = 2 * pi * radius * height
      topArea = pi * radius^2
  in  sideArea + 2 * topArea

--	calcBmis :: (RealFloat a) => [(a, a)] -> [a]  
--	calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

	-- switch(n){
	--   case 1:
	--   		return 4
	--   		break
	--   case default :
	--   		while(1){alert("catfish")}
	--   		break;
	--  }
	
	-- case expression of pattern -> result  
	--                    pattern -> result  
	--                    pattern -> result  
	--                    ...  
	--
	--                    head' :: [a] -> a  
	--                    head' [] = error "No head for empty lists!"  
	--                    head' (x:_) = x  
	--
	--                    head' :: [a] -> a  
	--                    head' xs = case xs of [] -> error "No head for empty lists!"  
	--                                          (x:_) -> x  
	--
	--
	-- describeList :: [a] -> String  
	-- describeList xs = "The list is " ++ what xs  
	--     where what [] = "empty."  
	--           what [x] = "a singleton list."  
	--           what xs = "a longer list." 
	--
fizzBuzz :: Int -> String
fizzBuzz a
  | three && five = "FizzBuzz"
  | three = "Fizz"
  | five = "Buzz"
  | otherwise = show a
  where three = a `mod` 3 == 0
        five = a `mod` 5 == 0


-- this will almost definitely not work
-- best leave it for now...
-- ok, I'll actually leave it this time!
--maximumIndex :: Ord a => [a] -> a
--maximumIndex xs 
--  | mInd xs 0 (0,0)
--    where mInd (x:xs) index (largestIndex,largestValue) = if x == [] then largestIndex else if x > largestValue then mInd xs (index+1) (x,index) else mInd xs (index + 1) (largestIndex, largestValue) 

maximum' :: Ord a => [a] -> a
maximum' [] = error "Maximum of an empty list"
maximum' [x] = x
maximum' (x:xs)
  | x > maxTail = x
	| otherwise = maxTail
	where maxTail = maximum' xs
-- ok cool. Trying maximum index again

-- damn it, I keep doing this thing where a variable has a really
-- stupid name in the tutorial, so I type out a semantic name
-- and then copy the original name from the tutorial.
-- -.-
replicate' :: (Num count, Ord count) => count -> thingToBeReplicated -> [thingToBeReplicated]
replicate' count thingToBeReplicated
  | count < 0 = error "Negative Length Error"
	| count == 0 = []
	| otherwise = thingToBeReplicated:replicate' (count-1) thingToBeReplicated 
-- I don't really understand the typeclasses here, why does count
-- need to be an Ord?
-- It worked, but I still don't understand why count E Ord...

-- ok, now to implement 'take'. I'll try this without looking at
-- the tutorial's implementation... except for the typeclass!
-- oh yeah, it takes two args... *facepalm*
take' :: (Num count, Ord count) => count -> [a] -> [a]
take' count _
  | count < 0 = error "Can't take a negative number of elements"
	| count == 0 = []
take' _ [] = []
take' count (x:xs) = x:take' (count-1) xs  
-- not sure if you can mix using guards and pattern matching,
-- I guess I'm about to find out...
-- Oh yeah, I have to account for empty input lists
-- did pattern matching and guard mixing wrong
--
--
-- hmm... everything I try to do myself errors for some reason
-- gotta keep practicing I guess
--
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse(xs)++x

-- Abandoning file...
