module Chapter02 where

sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

triple :: Num a => a -> a
triple x = x * 3

triple2 :: Num a => a -> a
triple2 = (*) 3

piSquare :: Floating a => a -> a
piSquare x = pi * (x * x)

waxOn :: Num a => a
waxOn = x * 5
  where
    x = y ^ 2
    y = z + 8
    z = 7

waxOff :: (Num a, Floating a) => a -> a
waxOff = triple . piSquare
