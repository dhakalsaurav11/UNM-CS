-- Problem 1 Prelude Types (1 pt each, 15 pts)
-- Give the type of each of the following builtin Haskell functions.
-- Provide your answers in Haskell comments below each function.

-- head ::
-- head :: [a] -> a
-- tail ::
-- tail :: [a] -> [a]
-- fst ::
-- fst :: (a, b) -> a   
-- snd ::
-- snd :: (a, b) -> b
-- length ::
-- length :: [a] -> Int
-- null ::
-- null :: [a] -> Bool
-- take ::
-- take :: Int -> [a] -> [a]
-- drop ::
-- drop :: Int -> [a] -> [a]
-- sum ::
-- sum :: Num a => [a] -> a
-- product ::
-- product :: Num a => [a] -> a
-- (++) ::
-- (++) :: [a] -> [a] -> [a]
-- (!!) ::
-- (!!) :: [a] -> Int -> a
-- elem ::
-- elem :: Eq a => a -> [a] -> Bool
-- (:) ::
-- (:) :: a -> [a] -> [a]
-- last ::
-- last :: [a] -> a
    
-- Problem 2 More Types (1 pt each, 15 pts)
-- What is the type of the following Haskell expressions?
-- Provide your answers in Haskell comments below each expression.
  
-- True ::
-- True :: Bool
-- not True :: 
-- not True :: Bool
-- not :: 
-- not :: Bool -> Bool
-- 1 + 2 :: 
-- 1 + 2 :: Num a => a
-- (+) 1 2 :: 
-- (+) 1 2 :: Num a => a
-- (+) 1 :: 
-- (+) 1 :: Num a => a -> a
-- (+) :: 
-- (+) :: Num a => a -> a -> a
-- [True, False] :: 
-- [True, False] :: [Bool]
-- [1, 2, 3] :: 
-- [1, 2, 3] :: Num a => [a]
-- [1, 2, 3] ++ [4, 5, 6] :: 
-- [1, 2, 3] ++ [4, 5, 6] :: Num a => [a]
-- [] :: 
-- [] :: [a]
-- [[]] ::
-- [[]] :: [[a]]
-- [[], []] ::
-- [[], []] :: [[a]]
-- take 10 [] :: 
-- take 10 [] :: [a]
-- take 10 :: 
-- take 10 :: [a] -> [a]

-- Problem 3 Layout (3 pts each, 15 pts)
-- Fix the error in each of the following pieces of code.

f = x + y
  where
    x = 1
    y = 2

g x y = x + y

foo x y = x + y
    
h = [1,2,3] ++ [4,5,6]

u = x * y
  where
    x = 1
    y = 2

-- Problem 4 Classes (3 pts each, 18 pts)

-- Which functions does the Ord typeclass define?
-- Ans: (>), (<), (>=), (<=), min, max, compare
-- Which functions does the Show typeclass define?
-- Ans: show, showsPrec, showList
-- Which functions does the Read typeclass define?
-- Ans: readList, readsPrec
-- Which functions does the Num typeclass define?
-- Ans: (+), (-), (*), negate, abs, fromInteger, signum
-- Which functions does the Integral typeclass define?
-- Ans: quot, mod, div, rem, quotRem, divMod, toInteger
-- Which functions does the Fractional typeclass define?
-- Ans: (/), recip, fromRational

-- Problem 5 Functions (37 pts)

-- (5 pts) (Chapter 4 Exercise 1)
halve :: [a] -> ([a], [a])
halve xs =  (take n xs, drop n xs)
  where
    n = length xs `div` 2

-- (10 pts) (Chapter 4 Exercise 2)
fourth1 :: [a] -> a
fourth1 xs = head (tail(tail(tail xs)))

fourth2 :: [a] -> a
fourth2 xs = xs !! 3

fourth3 :: [a] -> a
fourth3 (_:_:_:x:_) = x

-- (22 pts) (Chapter 4 Exercise 8)
luhnDouble :: Int -> Int
luhnDouble x = if doubledX > 9 then doubledX - 9 else doubledX
  where
    doubledX = x * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = (luhnDouble a + b + luhnDouble c + d) `mod` 10 == 0