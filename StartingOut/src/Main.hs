module Main where

doubleMe :: Int -> Int -- this adds arguments and return type declaration. We get warning without this
doubleMe x = x + x

doubleUs :: Int -> Int -> Int
doubleUs x y = x * 2 + y * 2

doubleUs_2 :: Int -> Int -> Int
doubleUs_2 x y = doubleMe x + doubleMe y

doubleSmallNumber :: Int -> Int
doubleSmallNumber x = if x > 100 -- if must have else clause so that it is a valid function
                      then x
                      else doubleMe x

lostNumbers :: [Int] -- following list type declaration
lostNumbers = [0, 1, 2, 3, 4]

lostNumbersTail :: [Int]
lostNumbersTail = [5, 6, 7, 8]

main :: IO ()
main = do 
          print (((div 92 10) == (92 `div` 10))) -- call 2 arg div function using equivalent infix `f` notation for clarity
          print (doubleMe 9)
          print (doubleUs 4 9)
          print (doubleUs_2 4 9 )
          print (doubleSmallNumber 101 )
          print (doubleSmallNumber 1 )
          print (lostNumbers)
          print (lostNumbers ++ lostNumbersTail)
          print (-1:lostNumbers)
          print (lostNumbers !! 1)

          print (head lostNumbers)
          print (tail lostNumbers)

          print (last lostNumbers)
          print (init lostNumbers)
