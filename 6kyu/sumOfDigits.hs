module DigitalRoot where

digitalRoot :: Integral a => a -> a
digitalRoot = undefined

modTen :: Integral a => a -> a
modTen = (`mod` 10)

dropTensDigit :: Integral a => a -> a
dropTensDigit = (`div` 10)

digits :: Integral a => a -> a
digits n
    | n == 0 = 0
    | otherwise = modTen n + digits (dropTensDigit n)