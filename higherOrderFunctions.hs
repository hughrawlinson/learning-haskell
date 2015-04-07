multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100

multipleOfFive :: a -> Bool
multipleOfFive a
  | a `mod` 5 == 0 = True
  | otherwise = False
