class Integer
  def even?
    self % 2 == 0
  end
end

sum = 0
fib_prev, fib = 1, 2
while !(fib > 4000000) do
  sum += fib if fib.even?
  fib_prev, fib = fib, fib_prev + fib
end

puts sum #4613732
