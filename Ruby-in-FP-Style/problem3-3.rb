#!/usr/bin/ruby
# 自分の得意な言語で
# Let's チャレンジ！！

def fact(n)
	tail_fact(1, n)
end

def tail_fact( ans, n )
	return ans if (0..1).include?( n )
	fact(ans * n, n - 1)
end

puts fact(gets.to_i)