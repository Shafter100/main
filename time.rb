require 'time'
require 'date'

# человек вводит дату своего рождения в формате (1900 или 78), программа выводит его возраст
def main1
  print "Enter your year of birth (yyyy or yy): "
  until (b_date = gets.chomp).to_i.to_s == b_date && [2,4].include?(b_date.size) && b_date.to_i < Time.now.year
    print "Enter a year (yyyy or yy): "
  end
  (b_date = "19" + b_date) if b_date.size == 2
  puts "You are #{Time.now.year - b_date.to_i}"
end

def date_validation(date_class)
  invalid_date = true
  while invalid_date
    begin
      date = date_class.parse(gets.chomp)
    rescue ArgumentError
      print "Enter a valid date: "
    else
      invalid_date = false
    end
  end
  return date
end

# человек вводит любую дату - программа говорит, какой это день недели был/будет
def main2
  print "Enter a date: "
  b_date = date_validation(Time)
  puts b_date.strftime("It is/was %A")
end

# человек вводит дату своего рождения и любую другую дату, программа сообщает, сколько ему лет было/будет в эту дату
def main3
  print "Enter your date of birth: "
  b_date = date_validation(Date)

  print "Enter a day you want to know how old you were/will be: "
  custom_date = date_validation(Date)
  puts ((custom_date - b_date)/365.25).to_i
end

# человек вводит дату своего рождения, программа выводит ему список лет и говорит, в какой день недели у него был др в этом году
def main4
  print "Enter your date of birth: "
  b_date = date_validation(Time)
  (0..(Time.new.year - b_date.year)).each do |year|
    puts (Time.parse("#{b_date.day}.#{b_date.month}.#{b_date.year + year}")).strftime("In %Y your birthday was on %A")
  end
end

main4
