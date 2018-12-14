traffic = {'green' => 'Go!', 'yellow' => 'Wait', 'red' => 'Stop!'}
traffic.default = 'There are green, yellow and red colors in a traffic lights'
print "Input color: "
puts traffic[gets.chomp.downcase]
