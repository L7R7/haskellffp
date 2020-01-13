module Chapter06 where

newtype TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn a) (TisAn b) = a == b

data TwoIntegers =
  Two Integer Integer

instance Eq TwoIntegers where
  (Two a b) == (Two a' b') = a == a' && b == b'

data StringOrInt
  = TisAnInt Int
  | TisAString String

instance Eq StringOrInt where
  (TisAnInt a) == (TisAnInt b) = a == b
  (TisAString a) == (TisAString b) = a == b
  _ == _ = False

data Pair a =
  Pair a a

instance (Eq a) => Eq (Pair a) where
  (Pair a a') == (Pair b b') = a == b && a' == b'

data Tuple a b =
  Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (Tuple a b) == (Tuple a' b') = a == a' && b == b'

data Which a
  = ThisOne a
  | ThatOne a

instance (Eq a) => Eq (Which a) where
  (ThisOne a) == (ThisOne a') = a == a'
  (ThatOne a) == (ThatOne a') = a == a'
  _ == _ = False

--instance (Eq a, Eq b) => Eq (EitherOr a b) where
--  (Hello a) == (Hello a') = a == a'
--  (Goodbye b) == (Goodbye b') = b == b'
--  _ == _ = False
data EitherOr a b
  = Hello a
  | Goodbye b
  deriving (Eq)

newtype Identity a =
  Identity a

instance Eq a => Eq (Identity a) where
  (==) (Identity v) (Identity v') = v == v'

data DayOfWeek
  = Mon
  | Tue
  | Weds
  | Thu
  | Fri
  | Sat
  | Sun
  deriving (Eq, Show)

instance Ord DayOfWeek where
  compare Fri Fri = EQ
  compare Fri _   = GT
  compare _ Fri   = LT
  compare _ _     = EQ

check' :: Ord a => a -> a -> Bool
check' a a' = a == a'

class Numberish a where
  fromNumber :: Integer -> a
  toNumber :: a -> Integer
  defaultNumber :: a

newtype Age =
  Age Integer
  deriving (Eq, Show)

instance Numberish Age where
  fromNumber = Age
  toNumber (Age n) = n
  defaultNumber = Age 65

newtype Year =
  Year Integer
  deriving (Eq, Show)

instance Numberish Year where
  fromNumber = Year
  toNumber (Year n) = n
  defaultNumber = Year 1988

sumNumberish :: Numberish a => a -> a -> a
sumNumberish a a' = fromNumber summed
  where
    integerOfA = toNumber a
    integerOfAPrime = toNumber a'
    summed = integerOfA + integerOfAPrime

newtype Person =
  Person Bool
  deriving (Show)

printPerson :: Person -> IO ()
printPerson = print

data Mood
  = Blah
  | Woot
  deriving (Eq, Show)

settleDown x =
  if x == Woot
    then Blah
    else x

type Subject = String

type Verb = String

type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"

s2 = Sentence "Julie" "loves" "dogs"

newtype Rocks =
  Rocks String
  deriving (Eq, Ord, Show)

newtype Yeah =
  Yeah Bool
  deriving (Eq, Ord, Show)

data Papu =
  Papu Rocks Yeah
  deriving (Eq, Ord, Show)

phew = Papu (Rocks "chases") (Yeah True)

truth = Papu (Rocks "chomskydoz") (Yeah True)

equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

comparePapus :: Papu -> Papu -> Bool
comparePapus p p' = p > p'

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f a b = f a == b

arith :: Num b => (a -> b) -> Integer -> a -> b
arith f i a = f a + fromInteger i
