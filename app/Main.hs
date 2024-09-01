module Main (main) where

import Text.Read (readMaybe)

-- Definition of basic arithmetic functions
add :: Float -> Float -> Float
add x y = x + y

subtract' :: Float -> Float -> Float
subtract' x y = x - y

multiply :: Float -> Float -> Float
multiply x y = x * y

divide :: Float -> Float -> Float
divide _ 0 = error "Cannot divide by 0"
divide x y = x / y

-- Function to safely read a Float from a string input
readFloat :: String -> Maybe Float
readFloat = readMaybe

-- Function to prompt the user for a valid number
getValidNumber :: String -> IO Float
getValidNumber prompt = do
    putStrLn prompt
    input <- getLine
    case readFloat input of
        Just n  -> return n
        Nothing -> do
            putStrLn "Invalid input. Please enter a valid number."
            getValidNumber prompt

-- Main function to run the calculator
main :: IO ()
main = do
    putStrLn "Welcome to the basic Haskell calculator"
    putStrLn "Choose an operation: (+, -, *, /)"
    operation <- getLine

    x <- getValidNumber "Enter the first number:"
    y <- getValidNumber "Enter the second number:"

    let result = case operation of
                    "+" -> add x y
                    "-" -> subtract' x y
                    "*" -> multiply x y
                    "/" -> divide x y
                    _   -> error "Invalid operation"

    putStrLn ("The result is: " ++ show result)
