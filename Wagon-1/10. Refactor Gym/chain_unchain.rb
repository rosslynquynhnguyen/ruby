# Ruby fonction to play to "Des chiffres et des lettres.."
def shuffle_word(a_word)
  a_word.upcase.chars.shuffle
end

def quote_prime_numbers(n)
  (2..n).find_all {|i| (2..i-1).select {|k| i % k == 0 }.count == 0 }.map{ |prime_num| "#{prime_num} is prime"}
end

def quote_prime_numbers_readable(n)
  primes = Array.new
  (2..n).each do |i|
    primes.push "#{i} is prime" if (2..i-1).select { |j| i % j == 0 }.count == 0
  end
  primes
end

puts shuffle_word("nabuchodonosor")
puts quote_prime_numbers(30) == quote_prime_numbers_readable(30)
puts quote_prime_numbers_readable(30)