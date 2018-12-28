def oneRound(items)
  puts "\nPaper, scissors or stone? (Choose or type)"
  puts "1. Paper\n2. Scissors\n3. Stone"

  until ((userChoice = gets.chomp).to_i.to_s == userChoice && items.has_key?(userChoice)) || items.has_value?(userChoice.downcase)
    print "Enter a number from list or type your choice: "
  end

  if items.has_key?(userChoice)
    userChoice = items[userChoice]
  else
    userChoice = userChoice.downcase
  end

  puts "Your choice is #{userChoice}"
  userWon(userChoice, items)
end

def userWon(userChoice, items)
  aiChoice = items[rand(1..3).to_s]
  puts "I put #{aiChoice}!"
  case userChoice
  when "paper"
    case aiChoice
    when "paper"
      0
    when "scissors"
      -1
    when "stone"
      1
    end
  when "scissors"
    case aiChoice
    when "paper"
      1
    when "scissors"
      0
    when "stone"
      -1
    end
  when "stone"
    case aiChoice
    when "paper"
      -1
    when "scissors"
      1
    when "stone"
      0
    end
  end

end

def main
  puts "\nLet's play paper, scissors, stone!"
  puts "1. Yep, let's do it!\n2. Nope.."

  def exitGame
    until (play = gets.chomp).to_i.to_s == play && (1..2).member?(play.to_i)
      print "Enter 1 or 2: "
    end
    if play.to_i == 2
      exit
    end
  end

  exitGame

  items = {"1" => "paper", "2" => "scissors", "3" => "stone"}
  roundNum = 0
  userPoints = 0

  while roundNum < 3
    userPoints += oneRound(items)
    roundNum += 1
    if roundNum == 3
      if userPoints > 0
        puts "You won!"
      elsif userPoints < 0
        puts "You lost!"
      else
        puts "Tie!"
      end

      puts "\nDo you want to play again?"
      puts "1. Yes\n2. No"
      exitGame

      roundNum = 0
      userPoints = 0
    end
  end
end

main
