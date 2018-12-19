def conv(convMethod, temp)
  temp = temp.to_f
  case convMethod
  when "CF"
    temp = (temp * 9.0/5) + 32
  when "FC"
    temp = (temp - 32) * 5.0/9
  end
end

def output(convMethod, temp)
  case convMethod
  when "CF"
    puts "#{temp.round(4)} ºF"
  when "FC"
    puts "#{temp.round(4)} ºC"
  end
end

def main
  print "Convert from Celsius to Farenheit (type \"CF\") or from Farenheit to Celsius (type \"FC\"): "
  until (convMethod = gets.chomp.upcase) == "CF" || convMethod == "FC"
    print "Type CF or FC: "
  end

  print "Input temperature: "
  until (temp = gets.chomp).to_f.to_s == temp || temp.to_i.to_s == temp
    print "Enter a number: "
  end

  temp = conv(convMethod, temp)
  output(convMethod, temp)
end

main
