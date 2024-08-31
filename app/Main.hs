module Main (main) where
import Lib

-- Definition of basic arithmetic functions

add :: Float -> Float -> Float
add x y = x + y

subtract :: Float -> Float -> Float
subtract x y = x - y

multiply :: Float -> Float -> Float
multiply x y = x * y

divide :: Float -> Float -> Float
divide x 0 = error "Cannot divide by 0"
divide x y = x / y

-- Main function to run the calculator
main :: IO ()
main = someFunc
