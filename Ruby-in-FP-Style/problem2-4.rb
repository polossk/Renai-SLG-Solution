#!/usr/bin/ruby
# 自分の得意な言語で
# Let's チャレンジ！！

def count( n )
	if n == 0 then
		puts "0!!"
		return nil
	end
	puts n
	count(n - 1)
end

puts count(gets.to_i)