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
* Hash

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

### Bonus Features
1. Add `Lizard` and `Spock` to the game
    * The game will add 7 game rules, a total of 10 rules:
    ```
    Game Rules:
    1. rock beats scissors
    2. rock beats lizard
    3. paper beats rock
    4. paper beats spock
    5. scissors beats paper
    6. scissors beats lizard
    7. lizard beats paper
    8. lizard beats spock
    9. spock beats rock
    10. spock beats scissors
    ```

2. Update how to input choices. User can type:
    * "r" - "rock"
    * "p" - "paper"
    * "sc" - "scissors"
    * "l" - "lizard"
    * "sp" - "spock"

    Also updated case-insensitive user input. User can type uppercase, capitalized, lowercase input.

3. Keep score of the player's and computer's wins.
    * First to reach 5 points will be the grand winner
