module Chapter04 where

data Mood
  = Blah
  | Woot
  deriving (Show)

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood Woot = Blah

greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool
    then putStrLn "eyyyyy. What's shakin'?"
    else putStrLn "pshhhh."
  where
    cool = coolness == "downright frosty yo"

greetIfCool2 :: String -> IO ()
greetIfCool2 coolness =
  if cool coolness
    then putStrLn "eyyyyy. What's shakin'?"
    else putStrLn "pshhhh."
  where
    cool v = v == "downright frosty yo"

awesome = ["Papuchon", "curry", ":)"]

also = ["Quake", "The Simons"]

allAwesome = [awesome, also]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

myAbs :: Integer -> Integer
myAbs x =
  if x >= 0
    then x
    else -x

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f t1 t2 = ((snd t1, snd t2), (fst t1, fst t2))

f2 :: (a, b) -> (c, d) -> ((b, d), (a, c))
f2 (a, b) (c, d) = ((b, d), (a, c))

f3 :: (a, b) -> (c, d) -> ((b, d), (a, c))
f3 = \(a, b) -> \(c, d) -> ((b, d), (a, c))
