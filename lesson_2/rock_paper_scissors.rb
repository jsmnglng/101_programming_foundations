# Program: Rock, Paper, Scissors - Lizard Spock Edition

VALID_CHOICES = {
  "r" => "rock",
  "p" => "paper",
  "sc" => "scissors",
  "l" => "lizard",
  "sp" => "spock"
}

WINNING_MOVES = {
  'rock' => %w(scissors lizard),
  'paper' => %w(rock spock),
  'scissors' => %w(paper lizard),
  'lizard' => %w(paper spock),
  'spock' => %w(rock scissors)
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_input?(input)
  VALID_CHOICES.include?(input) || VALID_CHOICES.values.include?(input)
end

def win?(first, second)
  WINNING_MOVES[first].include?(second)
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

def clear_screen
  system('clear') || system('cls')
end

loop do # main loop
  clear_screen()
  prompt("Welcome to Rock, Paper, Scissors - Lizard Spock Edition")
  prompt("First to score 5 wins!")

  round = 1
  player_score = 0
  computer_score = 0
  loop do # keeping score loop
    Kernel.puts('')
    prompt("-------ROUND #{round}-------")

    player_choice = ''
    prompt("Choose one:")
    VALID_CHOICES.each { |key, value| prompt("#{key} = #{value}") }
    loop do # input validation loop
      player_choice = Kernel.gets().chomp().downcase()
      break if valid_input?(player_choice)
      prompt("That's not a valid choice.")
    end

    clear_screen()

    player_choice = VALID_CHOICES[player_choice] if
      VALID_CHOICES.include?(player_choice)

    computer_choice = VALID_CHOICES.values().sample()

    prompt("You chose: #{player_choice}; Computer chose: #{computer_choice}")

    display_results(player_choice, computer_choice)

    if win?(player_choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, player_choice)
      computer_score += 1
    end

    prompt("SCORE: You-#{player_score}; Computer-#{computer_score}")

    round += 1

    if player_score == 5 || computer_score == 5
      Kernel.puts('')
      prompt("-------GAME OVER-------")
      break
    end
  end

  if player_score == 5
    prompt(":::GRAND WINNER::: You")
  else
    prompt(":::GRAND WINNER::: Computer")
  end

  prompt("Do you want to play again? (Enter Y to play again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
