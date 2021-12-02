#!/usr/bin/env ruby

arr = File.readlines('input').map{|x| a,b = x.split; [a, b.to_i] }

# part 1
sums = arr.group_by(&:first).transform_values{|a| a.map(&:last).sum }
puts sums['forward'] * (sums['down'] - sums['up'])

# part 2
h, a, d = 0, 0, 0
arr.each do |dir, n|
    case dir
    when 'down'    then a += n
    when 'up'      then a -= n
    when 'forward' then h += n; d += a*n
    end
end
puts h*d
