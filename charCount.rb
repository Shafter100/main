#Решение 1
def count1(f)
  # Вывод в виде хеша
  #puts f.chars.to_a.inject(Hash.new(0)){|resHash, elem| resHash[elem] += 1; resHash}
  # Вывод в стоблец
  f.chars.to_a.inject(Hash.new(0)){|resHash, elem| resHash[elem] += 1; resHash}.each {|k, v| puts "#{k}: #{v}"}
end
#Решение 2
def count2(f)
  freqs = Hash.new(0)
  f.each_char {|ch| freqs[ch] += 1}
  #puts freqs # Вывод в виде хеша
  # Вывод в стоблец
  freqs.each {|k, v| puts "#{k}: #{v}"}
end

def main
  f = File.open("text.txt", "r") if File.file?("text.txt")
  f = f.read
  puts "Method 1: "
  count1(f)
  puts "\nMethod 2: "
  count2(f)
end

main
