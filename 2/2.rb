sum = 0
prev, fib = 1, 2
while !(fib > 4000000) do
  sum += fib if fib % 2 == 0
  prev, fib = fib, prev + fib
end

puts sum #4613732
