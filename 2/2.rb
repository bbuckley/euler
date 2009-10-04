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


def fib(n)
  n < 2 ? n : fib(n-1) + fib(n-2)
end

n, sum = -1, 0
while !((f = fib(n += 1)) > 4000000) do
  sum += f if f.even?
end

puts sum #4613732
