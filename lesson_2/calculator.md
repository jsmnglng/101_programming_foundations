# Problem solving approach for Calculator Assignment

## Program: Calculator

Build a command line calcuator program that does the following:
* Asks for two numbers
* Asks for the type of operation to perform:
  * add, subtract, multiply and divide
  * Perform the operation on the two numbers
  * Displays the result

 Use the `Kernel.gets()` method to retrieve user input, and use `Kernel.puts()` method to display output. Remember that `Kernel.gets()` includes the newline, so you have to call `chomp()` to remove it: `Kernel.gets().chomp()`.

### Revisions:
* Added a `prompt()`
* Refactored the if statement to case statement (choosing an operator)
* Referred to the calculator flow chart and created loops for
  * validating first number and second number
    * added method `valid_number?()`
  * the whole program
  * validating operator
* Added a feature to enter a valid name first before using the program
* Added heredoc that allows to write multiline strings (prompt choosing operator)
* Added `operation_to_message()` for dynamic program purposes
* Tried removing some of the optional parentheses when calling methods to start to get the hang of it

### Bonus Features:
* Better integer validation
* Number validation - verify if input is Integer or Float
* Saved the return value of the `operation_to_message()` in a variable
* Extracted messages (`prompt()`) to a configuration file `calculator_messages.yml`
* Internationalized messages (in Tagalog)

### Problem encountered:
* How to use messages with variables/methods/Ruby code (string interpolation) on YAML
