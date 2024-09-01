# Basic Haskell Calculator

## Overview

This project is a simple arithmetic calculator implemented in Haskell. It performs basic arithmetic operations, including addition, subtraction, multiplication, and division. Additionally, it supports power and square root operations. The calculator operates via a command-line interface (CLI) and provides a clear menu for user interaction.

## Features

- **Addition** (`+`): Adds two numbers.
- **Subtraction** (`-`): Subtracts the second number from the first.
- **Multiplication** (`*`): Multiplies two numbers.
- **Division** (`/`): Divides the first number by the second (handles division by zero).
- **Power** (`**`): Raises the first number to the power of the second.
- **Square Root** (`sqrt`): Computes the square root of a number.
- **Exit**: Exits the calculator.

## Requirements

- [GHC (Glasgow Haskell Compiler)](https://www.haskell.org/ghc/) or [Stack](https://docs.haskellstack.org/en/stable/README/) for building and running Haskell programs.

## Installation

To build and run the project, follow these steps:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/yourusername/basic-haskell-calculator.git
    cd basic-haskell-calculator
    ```

2. **Install dependencies**:
    If you are using Stack:
    ```bash
    stack build
    ```

    If you are using GHC directly, make sure you have `ghc` installed and use `ghc` to compile the code.

## Usage

1. **Run the Calculator**:
    ```bash
    stack run
    ```

2. **Follow the prompts**:
    - You will be presented with a menu of operations.
    - Enter the number corresponding to the desired operation.
    - For operations requiring two numbers, you will be prompted to enter both numbers.
    - For the square root operation, you will only need to enter one number.
    - To exit the program, select the option "7. Exit".

## Example

```plaintext
Welcome to the Haskell Calculator
Please select an operation:
1. Addition (+)
2. Subtraction (-)
3. Multiplication (*)
4. Division (/)
5. Power (**)
6. Square root (sqrt)
7. Exit
3
Enter the first number:
5
Enter the second number:
3
The result is: 15.0
```

## Error Handling
- **Invalid Input:** If the user enters an invalid operation or a non-numeric input, the program will prompt the user to enter a valid option or number. For operations requiring two numbers, it will request both numbers again if any input is invalid.
- **Division by Zero:** If a division by zero is attempted, the program will display an error message and terminate the operation.
- **Negative Square Root:** If the user attempts to calculate the square root of a negative number, the program will display an error message indicating that the operation is not possible.

## Contribution
Feel free to contribute to this project by opening issues, suggesting features, or submitting pull requests. Contributions are welcome to improve the functionality and usability of the calculator.

To contribute:

1. Fork the repository on GitHub.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them with descriptive messages.
4. Push to your branch on your forked repository.
5. Open a pull request to the main repository for review.

Please ensure that your changes are well-documented and tested.

##License
This project is licensed under the MIT License - see the LICENSE file for details.