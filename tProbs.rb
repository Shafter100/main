arrNil = [nil,123,nil,"test", :foo, :bar]
#print arrNil.compact
#puts
print arrNil - [nil]
puts
######
arrHash = [:foo, nil, :foo, "foo", 5, 'bar', :foo, 'banana', 'milk', 12, :foo, 'bar', 34, 5, 'banana', 'milk', nil, 12, 45, 'milk']
#hashArr = {}
#hashArr.default = 0
#arrHash.each{|elem| hashArr[elem] += 1}
#print hashArr
#puts
print arrHash.inject(Hash.new(0)){|resHash, elem| resHash[elem] += 1; resHash}
puts
######
hashSort = { abc: 'hello', 'another_key' => 123, 4567 => 'third' }
print hashSort.keys.map{|el| el.to_s}.sort_by{|el| el.size}
puts
