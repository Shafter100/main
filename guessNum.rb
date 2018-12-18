range = 1..100
puts "Guess the number from #{range}"

def guessNum(range)
  num = rand(range)
  tries = 3
  guessed = false
  until tries.zero? || guessed
    #puts num
    puts "You have #{tries} more tries. Your choice: "
    until range.member?(userNum = gets.chomp.to_i)
      print "Enter a number from #{range}: "
    end

    if num == userNum
      guessed = true
    elsif num != userNum && tries > 1
      print "Try again. "
    end

    tries -= 1
  end
  puts guessed ? "You're right!" : "Nope.. Guessed number was #{num}"
end

guessNum(range)
