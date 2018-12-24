def chessBoard
  def letters
    4.times{print " "}
    ("A".."H").each{|ch| print ch + " "}
    puts
  end

  letters

  2.times{print " "}
  print "\u250c"
  17.times{print "\u2500"}
  print "\u2510"
  puts
  
  for i in (0..7)
    print "#{8 - i} \u2502 "
    if (8 - i).even?
      4.times{print "\u2591 \u2588 "}
    else
      4.times{print "\u2588 \u2591 "}
    end
    print "\u2502 #{8 - i}"
    puts
  end

  2.times{print " "}
  print "\u2514"
  17.times{print "\u2500"}
  print "\u2518"
  puts

  letters
end

chessBoard
