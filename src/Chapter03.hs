module Chapter03 where

myGreeting :: String
myGreeting = "hello" ++ " world!"

hello :: String
hello = "hello"

world :: String
world = "world!"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where
    secondGreeting = concat [hello, " ", world]

topLevelFunction :: Integer -> Integer
topLevelFunction x = x + woot + topLevelValue
  where
    woot :: Integer
    woot = 10

topLevelValue :: Integer
topLevelValue = 5

myGreeting2 :: String
myGreeting2 = (++) "hello" " world!"

main2 :: IO ()
main2 = do
  putStrLn myGreeting2
  putStrLn secondGreeting
  where
    secondGreeting = (++) hello $ (++) " " world

ex1a :: String -> String
ex1a s = s ++ "!"

ex1b :: String -> String
ex1b = take 1 . drop 4

ex1b2 :: String -> Char
ex1b2 s = s !! 4

ex1c :: String -> String
ex1c = ex1a . drop 9

thirdLetter :: String -> Char
thirdLetter s = s !! 2

letterIndex :: Int -> Char
letterIndex x = "awesome!" !! x

rvrs :: String -> String
rvrs s = drop 9 s ++ " " ++ (take 2 . drop 6) s ++ " " ++ take 5 s
