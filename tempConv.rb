def validTemp(convMethod, temp)
  case convMethod
  when "CK"
    if temp < -273.15
      print "The temperature is too low. "
      return false
    end
  when "KC"
    if temp < 0
      print "The temperature is too low. "
      return false
    end
  end
  true
end

def conv(convMethod, temp)
  temp = temp.to_f
  case convMethod
  when "CK"
    temp += 273.15
  when "KC"
    temp -= 273.15
  end
end

def output(convMethod, temp)
  case convMethod
  when "CK"
    puts "#{temp.round(4)} K"
  when "KC"
    puts "#{temp.round(4)} ºC"
  end
end

def main
  print "Convert from Celsius to Kelvin (type \"CK\") or from Kelvin to Celsius (type \"KC\"): "
  until (convMethod = gets.chomp.upcase) == "CK" || convMethod == "KC"
    print "Type CK or KC: "
  end

  print "Input temperature: "
  until ((temp = gets.chomp).to_f.to_s == temp || temp.to_i.to_s == temp) && validTemp(convMethod, temp.to_f)
    print "Enter a number: "
  end

  temp = conv(convMethod, temp)
  output(convMethod, temp)
end

main
