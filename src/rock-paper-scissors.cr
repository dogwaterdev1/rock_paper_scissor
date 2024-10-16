# TODO: Write documentation for `Rock::Paper::Scissors`
module Rock::Paper::Scissors

  enum Sign
    Rock        # 0
    Paper       # 1
    Scissor     # 2
  end

  VERSION = "0.1.0"

  # TODO: Put your code here
  puts "Rock paper scissors app. Please enter an option:\n"

  while true
    user_input = gets.not_nil!.strip # strip out whitespace
    user_input = user_input.downcase
    if user_input == "q" || user_input == "exit"
      break
    end

    # check user input is a valid thing
    if user_input != "rock" && user_input != "paper" && user_input != "scissor"
      puts "please enter a valid option.\n\trock\n\tpaper\n\tscissor"
      next
    end

    # rock paper scissors start
    selected_item = Sign::Rock
    if user_input == "rock"
      puts "Rolling 'rock'"
      selected_item = Sign::Rock
    elsif user_input == "paper"
      puts "Rolling 'paper'"
      selected_item = Sign::Paper
    else user_input == "scissors"
      puts "Rolling 'scissors'"
      selected_item = Sign::Scissor
    end

    # Roll the opponent
    puts "\nOpponent Rolling..."
    random_number = Random.new.rand(0..2)
    case random_number
    when 0 # is Rock
      puts "Opponent Rolled: Rock"
      # do checks
      if selected_item == Sign::Rock
        puts "\nTied. Roll again."
        next
      elsif selected_item == Sign::Paper
        puts "\nYou win."
        break
      elsif selected_item == Sign::Scissor
        puts "\nYou lose."
        break
      end
    when 1 # is Paper
      puts "Opponent Rolled: Paper"
      # do checks
      if selected_item == Sign::Rock
        puts "\nYou lose."
        break
      elsif selected_item == Sign::Paper
        puts "\nTied. Roll again."
        next
      elsif selected_item == Sign::Scissor
        puts "\nYou win."
        break
      end
    when 2 # is Scissors
      puts "Opponent Rolled: Scissor"
      # do checks
      if selected_item == Sign::Rock
        puts "\nYou Win."
        break
      elsif selected_item == Sign::Paper
        puts "\nYou lose."
        break
      elsif selected_item == Sign::Scissor
        puts "\nTied. Roll again."
        next
      end
    else
      puts "idk, you shouldn't get this"
    end
  end
end
