module Chapter05 where

f :: a -> a -> a -> a
f = undefined

x :: Char
x = undefined

res1 = f x

g :: a -> b -> c -> b
g = undefined

res2 = g 0 'c' "woot"

h :: (Num a, Num b) => a -> b -> b
h = undefined

res3 = h 1.0 2

i :: (Num a, Num b) => a -> b -> b
i = undefined

res4 = i 1 (5.5 :: Double)

jackal :: (Ord a, Eq b) => a -> b -> a
jackal = undefined

res5 = jackal "keyboard" "has the word jackal in it"

res6 = jackal "keyboard"

kessel :: (Ord a, Num b) => a -> b -> a
kessel = undefined

res7 = kessel 1 2

res8 = kessel 1 (2 :: Integer)

aaa1 :: a -> a -> a
aaa1 a _ = a

aaa2 :: a -> a -> a
aaa2 _ a = a

abb :: a -> b -> b
abb _ b = b

fTypeInference :: Num a => a -> a -> a
fTypeInference x y = x + y + 3

functionH :: [a] -> a
functionH (x:_) = x

functionC :: Ord a => a -> a -> Bool
functionC x y = x > y

functionS :: (a, b) -> b
functionS (x, y) = y

myFunc :: (x -> y) -> (y -> z) -> c -> (a, x) -> (a, z)
myFunc xToY yToZ _ (a, x) = (a, (yToZ . xToY) x)

ii :: a -> a
ii = id

c :: a -> b -> a
c a _ = a

c'' :: b -> a -> b
c'' = c

c' :: a -> b -> b
c' _ b = b

r :: [a] -> [a]
r = id

co :: (b -> c) -> (a -> b) -> a -> c
co bc ab = bc . ab

a :: (a -> c) -> a -> a
a _ a = a

a' :: (a -> b) -> a -> b
a' ab = ab
