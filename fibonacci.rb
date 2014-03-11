require 'benchmark'
class Fibonacci

  module Inject
    def self.fib(n)
      (0..n).inject([1,0]) { |(first, second), _| [second, (first + second)] }[0]
    end
  end

  module Recursive
    def self.fib(n)
      if n< 0
        return 0
      elsif n== 0
        return 0
      elsif n== 1
        return 1
      end
      fib(n - 1) + fib(n -2)
    end
  end

  module Iterative
    def self.fib(n)
      return 0 if n== 0
      return 1 if n== 1 || n== 2
      fibby(1, 1, n - 2)
    end

    def self.fibby(a, b, numleft)
      return a + b if numleft == 1
      fibby(b, (a+b), numleft - 1)
    end
  end
end

iterations = 1

[81759].each do |n|
  Benchmark.bmbm do |bm|

    bm.report("   Inject for Fibonacci of #{n} ") do
      iterations.times do
        Fibonacci::Inject::fib(n)
      end
    end
    bm.report("Iterative for Fibonacci of #{n} ") do
      iterations.times do
        Fibonacci::Iterative::fib(n)
      end
    end

    # bm.report("Recursive for Fibonacci of #{n} ") do
    #   iterations.times do
    #     Fibonacci::Recursive::fib(n)
    #   end
    # end
    puts "The Fibonacci result is a #{Fibonacci::Inject::fib(n).size} digit number"
  end
end
