

def a
  puts "a"
end

def b
  puts "b"
  a()
end

def c
  puts "c"
  b()
end

puts c()
