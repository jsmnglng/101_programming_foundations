# Problem solving approach for Rock Paper Scissors Assignment

## Program: Mortgage Loan Calculator

### Understanding the Problem:
* Input: string
  * rock || paper || scissors
  * User makes a choice
  * Computer makes a choice
* Output: string
  * Result of the game. Who's the winner?
* Rules:
  * rock beats scissors
  * paper beats rock
  * scissors beats paper

### Example Run
```
# Scenario 1
=> Choose one: rock, paper, scissors
rock
=> You chose: rock; Computer chose: scissors
=> You won!
=> Do you want to play again? (Enter 'Y' to play again)
Y
# The game will restart...

# Scenario 2
=> Choose one: rock, paper, scissors
paper
=> You chose: paper; Computer chose: paper
=> It's a tie!
=> Do you want to play again? (Enter 'Y' to play again)
No
=> Thank you for playing. Goodbye!

# Scenario 3
=> Choose one: rock, paper, scissors
scissor
=> That's not a valid choice.
=> Choose one: rock, paper, scissors
scissors
=> You chose: scissors; Computer chose: rock
=> Computer won!
=> Do you want to play again? (Enter 'Y' to play again)
No
=> Thank you for playing. Goodbye!
```

### Data Structure:
* Array

### Algorithm
```
1. The player chooses 'rock', 'paper' or 'scissors'
2. The computer chooses 'rock', 'paper' or 'scissors'
3. IF player chose rock AND computer chose scissors OR
    IF player chose paper AND computer chose rock OR
    IF player chose scissors AND computer chose paper,
      -Player won
  ELSE, IF player chose rock AND computer chose paper OR
    IF player chose paper AND computer chose scissors OR
    IF player chose scissors AND computer chose rock,
      -Computer won
  ELSE,
      -It's a tie
4. Return result of the game
5. Ask the player if he wants to play again.
   5.1 IF player wants to play again,
         -restart the program,
       ELSE,
         -quit the program
```
