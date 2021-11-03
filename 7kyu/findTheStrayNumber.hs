{-# LANGUAGE MultiWayIf #-}

module Main  where


-- stray :: [Int] -> Int
-- stray (x:y:z:xs)
--   | y /= x && y == z = x
--   | y /= x && z == x = y
--   | null z = stray xs
--   | x /= z && x == y = z
--   | otherwise = stray xs

-- notEqual :: (Eq a) => a -> a -> Int
notEqual :: Eq p => p -> p -> p
notEqual x y
  | x /= y = x
  | otherwise = y

-- stray :: [Int] -> Int
-- stray (x:xs) = last $ dropWhile (notEqual x) xs

-- equality x y z
--   | x == y &&
dropping x y = x == y

-- main :: [Int] -> Int
-- stray :: [Int] -> Int
stray xs = scanl1 notEqual xs

main :: a
main = undefined