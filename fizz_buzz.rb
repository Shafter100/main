ar=(1..25).to_a
#ar.each{|x| puts x}
ar.map{|x|
  print x
  print " fizz" if (x % 3).zero?
  print " buzz" if (x % 5).zero?
  print "\n"
   }
