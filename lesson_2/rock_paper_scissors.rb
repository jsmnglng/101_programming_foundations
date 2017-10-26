# Bonus Features
# - Add lizard and spock in the choices
# - Use shorthand user's input.
#   r  - rock,
#   p  - paper,
#   sc - scissors,
#   l  - lizard,
#   sp - spock
# - Keep score of the player's and computer's wins. (First to score 5 wins)

VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(winner, loser)
  win = {
    'rock' => %w(scissors lizard),
    'paper' => %w(rock spock),
    'scissors' => %w(paper lizard),
    'lizard' => %w(paper spock),
    'spock' => %w(rock scissors)
  }

  win[winner].include?(loser)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif player == computer
    prompt("It's a tie!")
  else
    prompt("Computer won!")
  end
end

prompt("Welcome to Rock, Paper, Scissors - Lizard Spock Edition")
prompt("First to score 5 wins!")

loop do # main loop
  system('clear') || system('cls')

  round = 1
  player_score = 0
  computer_score = 0

  loop do # keeping score loop
    Kernel.puts('')
    prompt("-------ROUND #{round}-------")

    choice = ''
    loop do # input validation loop
      prompt("Choose one: ")
      VALID_CHOICES.each { |key, value| prompt("#{key} - #{value}") }

      choice = Kernel.gets().chomp().downcase()

      if VALID_CHOICES.key?(choice)
        choice = VALID_CHOICES[choice]
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.values.sample

    prompt("You chose: #{choice.upcase()}; " \
           "Computer chose: #{computer_choice.upcase()}")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end

    prompt("SCORE: You-#{player_score}; Computer-#{computer_score}")

    round += 1

    if player_score == 5 || computer_score == 5
      prompt("-------GAME OVER-------")
      break
    end
  end

  if player_score == 5
    prompt(":::GRAND WINNER::: You")
  else
    prompt(":::GRAND WINNER::: Computer")
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp().downcase()
  break unless answer.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
