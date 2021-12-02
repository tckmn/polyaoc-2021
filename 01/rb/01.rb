#!/usr/bin/env ruby

arr = File.readlines('input').map &:to_i

# both parts
[1, 3].each do |i|
    puts arr[0...-i].zip(arr[i..-1]).count{|x,y| x<y}
end
