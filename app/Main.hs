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

power :: Float -> Float -> Float
power x y = x ** y

sqrt' :: Float -> Float
sqrt' x 
    | x < 0     = error "Cannot take the square root of a negative number"
    | otherwise = sqrt x

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

-- Function that presents the menu
showMenu :: IO ()
showMenu = do
    putStrLn "Please select an operation:"
    putStrLn "1. Addition (+)"
    putStrLn "2. Subtraction (-)"
    putStrLn "3. Multiplication (*)"
    putStrLn "4. Division (/)"
    putStrLn "5. Power (**)"
    putStrLn "6. Square root (sqrt)"
    putStrLn "7. Exit"

-- Function that captures the selection of operation selected by the user
getOperation :: IO String
getOperation = do
    showMenu
    choice <- getLine
    case choice of
        "1" -> return "+"
        "2" -> return "-"
        "3" -> return "*"
        "4" -> return "/"
        "5" -> return "**"
        "6" -> return "sqrt"
        "7" -> return "exit"
        _   -> do
            putStrLn "Invalid choice. Please select a valid option."
            getOperation

-- Main function to run the calculator
main :: IO ()
main = do
    putStrLn "Welcome to the Haskell Calculator"
    operation <- getOperation

    if operation == "exit"
        then putStrLn "Exiting the calculator. Goodbye!"
        else if operation == "sqrt"
            then do
                x <- getValidNumber "Enter the number:"
                let result = sqrt' x
                putStrLn ("The result is: " ++ show result)
                main -- Restart to allow another operation
            else do
                x <- getValidNumber "Enter the first number:"
                y <- getValidNumber "Enter the second number:"
                let result = case operation of
                                "+"  -> add x y
                                "-"  -> subtract' x y
                                "*"  -> multiply x y
                                "/"  -> divide x y
                                "**" -> power x y
                                _    -> error "Invalid operation"
                putStrLn ("The result is: " ++ show result)
                main -- Restart to allow another operation
