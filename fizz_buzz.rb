ar=(1..25).to_a
#ar.each{|x| puts x}
ar.each do |x|
  print x
  print " fizz" if (x % 3).zero?
  print " buzz" if (x % 5).zero?
  print "\n"
end
