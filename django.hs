--reverse' :: [a] -> [a]
--reverse' [] = []
--reverse' (x:xs) = reverse' xs ++ x
-- now I see my mistake...
-- or not...
-- oh I see! the ++ operator only works on two lists, never on a list and a 
-- singleton of the internal list type. *facepalm*
reverse' :: [a] -> [a]  
reverse' [] = []  
reverse' (x:xs) = reverse' xs ++ [x]

-- edited my terminal color-scheme, this should be significantly more legible.
