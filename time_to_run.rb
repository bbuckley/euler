require 'benchmark'

puts RUBY_VERSION
Done = [1,2,3,4,10,11]

Benchmark.bm do |x| x.report do 
  x.report("1:")   { require '1/1.rb' }
  x.report("2:")   { require '2/2.rb' }
  x.report("3:")   { require '3/3.rb' }
  x.report("4:")   { require '4/4.rb' }
  
  Done.each{|no| x.report("#{no}: ")   { require "#{no}/#{no}.rb" }}
end end
