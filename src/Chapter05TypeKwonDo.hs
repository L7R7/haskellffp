module Chapter05TypeKwonDo where

data Woot

data Blah

f :: Woot -> Blah
f = undefined

g :: (Blah, Woot) -> (Blah, Blah)
g (b, _) = (b, b)

f2 :: Int -> String
f2 = undefined

g2 :: String -> Char
g2 = undefined

h :: Int -> Char
h = g2 . f2

data A

data B

data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e = w . q

data X

data Y

data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x, y) = (xz x, yz y)

munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge xy ywz = fst . ywz . xy

flip :: Functor f => f (a -> b) -> a -> f b
flip fab a = fmap (\x -> x a) fab
