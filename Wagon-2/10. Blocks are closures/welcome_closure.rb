count = 0

welcome_blk = Proc.new do |name| 
  # your code goes here !
  suffix = if count > 1 then "friends" else "friend" end
  puts "Welcome #{name}, join your #{count} #{suffix}"
  count += 1
end

welcome_blk.call("felix") # => Welcome felix, join your 0 friend
welcome_blk.call("estelle") # => Welcome estelle, join your 1 friend

count = 10

welcome_blk.call("cedric") # => Welcome estelle, join your 2 friends
welcome_blk.call("fred") # => Welcome fred, join your 3 friends
