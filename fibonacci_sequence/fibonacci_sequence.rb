def fibs(n)          # returns "n" number of fibonacci numbers, solved through iteration
  (0...n).each_with_object([]) do |n, array|
    array << n if (n < 2)
    array << array[-1] + array[-2] unless (n < 2)
  end
end

def fibs_rec(n)      # returns "n" number of fibonacci numbers, solved through recursion
  (n <= 2) ? [0, 1][0...n] : fibs_rec(n - 1)[-1] + fibs_rec(n - 1)[-2]
end

p fibs(100)
p fibs_rec(0)