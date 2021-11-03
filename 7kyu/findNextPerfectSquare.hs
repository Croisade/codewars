squareRoot :: Integer -> Float
squareRoot = sqrt . fromInteger

toInt :: Float -> Integer
toInt = round

perfectSquare :: Integer -> Bool
perfectSquare x = floorSq x * floorSq x == x
    where floorSq y = floor $ squareRoot y

findNextSquare :: Integer -> Integer
findNextSquare x
    | perfectSquare x = toInt ((squareRoot x + 1) ** 2)
    | otherwise = -1