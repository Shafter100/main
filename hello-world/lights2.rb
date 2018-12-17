print "Input color: "
color = gets.chomp.downcase
def tr_lights(color)
  traffic = {'green' => 'Go!', 'yellow' => 'Wait', 'red' => 'Stop!'}
  if traffic[color]
    puts traffic[color]
  else
    puts "You have input #{color}, but there are green, yellow and red colors in a traffic lights"
  end
end
tr_lights(color)
