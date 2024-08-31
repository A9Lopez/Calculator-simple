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

    putStrLn "Welcome to the basic Haskell calculator"
    putStrLn "Choose an operation: (+, -, *, /)"
    operation <- getLine
    putStrLn "Enter the first number:"
    num1 <- getLine
    putStrLn "Enter the second number:"
    num2 <- getLine

    let x = read num1 :: Float
    let y = read num2 :: Float
    let result = case operation of
                    "+" -> add x y
                    "-" -> subtract x y
                    "*" -> multiply x y
                    "/" -> divide x y
                    _   -> error "Invalid operation"

    putStrLn ("The result is: " ++ show result)