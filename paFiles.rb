def oneRound(user1Choice, user2Choice, items)
  puts "Player 1 chose #{user1Choice}"
  puts "Player 2 chose #{user2Choice}"
  userWon(user1Choice, user2Choice, items)
end

def userWon(user1Choice, user2Choice, items)
  #user2Choice = items[rand(1..3).to_s]
  #puts "I put #{user2Choice}!"
  case user1Choice
  when "paper"
    case user2Choice
    when "paper"
      0
    when "scissors"
      -1
    when "stone"
      1
    end
  when "scissors"
    case user2Choice
    when "paper"
      1
    when "scissors"
      0
    when "stone"
      -1
    end
  when "stone"
    case user2Choice
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

  user1File = File.new("user1.txt", "w+")
  user2File = File.new("user2.txt", "w+")
  games = 10
  games.times do
    3.times {user1File.puts(items[rand(1..3).to_s])}
    3.times {user2File.puts(items[rand(1..3).to_s])}
  end
  user1File.close
  user2File.close

  roundNum = 0
  user1Points = 0
  # цикл по файлам


  file1Info = File.read("user1.txt").split("\n")
  file2Info = File.read("user2.txt").split("\n")

  (0...file1Info.size).each do |i|
    #while roundNum < 3
      user1Points += oneRound(file1Info[i], file2Info[i], items)
      roundNum += 1
      if roundNum % 3 == 0
        if user1Points > 0
          puts "Player 1 won!\n "
        elsif user1Points < 0
          puts "Player 2 won!\n "
        else
          puts "Tie!\n "
        end

        roundNum = 0
        user1Points = 0
      end
    #end

    # puts "\nDo you want to play again?"
    # puts "1. Yes\n2. No"
    # exitGame
  end
  # конец цикла по файлам
end

main
