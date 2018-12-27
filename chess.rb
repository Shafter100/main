LCornerUp = "\u250c"
HLine = "\u2500"
RCornerUp = "\u2510"
VLine = "\u2502"
WhiteBox = "\u2591"
BlackBox = "\u2588"
LCornerDown = "\u2514"
RCornerDown = "\u2518"

def chessBoard
  def letters
    (N.to_s.size + 4).times{print " "}
    #("A"..("A".ord + N - 1).chr).each{|ch| print ch + " "}
    (0..(N - 1)).each do |ch|
      if ch < 26
        print (ch + 65).chr + "  "
      else
        print (ch%26 + 65).chr + (ch / 26).to_s + " "
      end
     end
    puts
  end

  letters

  def heading(lCorner, rCorner)
    (N.to_s.size + 1).times{print " "}
    print lCorner
    (3 * N + 2).times{print HLine}
    print rCorner
    puts
  end

  def fillField(even)
    def comPrint(c1, c2)
      #(N / 2).times{print "#{c1} #{c2} "}
      (0...(N / 2)).to_a.each do
        print "#{c1}  #{c2}  "
      end
      print "#{c1}  " if N.odd?
    end
    even ? comPrint(WhiteBox, BlackBox) : comPrint(BlackBox, WhiteBox)
  end

  heading(LCornerUp, RCornerUp)

  (0..(N - 1)).to_a.each do |i|
    (N.to_s.size - (N - i).to_s.size).times {print " "}
    print "#{N - i} #{VLine}  "
    fillField((N - i).even?)
    print "#{VLine} #{N - i}"
    puts
  end

  heading(LCornerDown, RCornerDown)

  letters
end

N = 8
chessBoard
