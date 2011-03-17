#!/usr/bin/ruby

require 'set'

def isect(a, b) 
  # Convert array to Set objects and perform intersection
  a = a.to_set
  b = b.to_set

  return a & b
end

x = Array.new
y = Array.new

n = gets.chomp.to_i  

n.times do 
    l = gets.chomp.split
    x.push(l[0])
    y.push(l[1])
end

t2 = Time.now
xy = isect(x, y)
t3 = Time.now
printf("Set   | n = %d : %d intersects found in %f seconds\n",x.size,xy.size,t3-t2)