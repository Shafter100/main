print 'Enter a year: '
while (year = gets.chomp.to_i).zero?
  print 'Enter a number: '
end
puts (year % 4).zero? ? 'It is a leap year!' : 'It is not a leap year('
