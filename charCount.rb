def count(f, freqs)
  f.each_char {|ch| freqs[ch] += 1}
end

def countSym(filePath)
  #f = File.open(filePath, "r") if File.file?(filePath)
  #f = f.read
  if File.file?(filePath)
    freqs = Hash.new(0)
    File.foreach(filePath) { |line| count(line, freqs)}
    freqs.each {|k, v| puts "#{k}: #{v}"}
  else
    puts "File does not exist!"
  end
end

countSym("text.txt")
