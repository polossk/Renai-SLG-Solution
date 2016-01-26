# 自分の得意な言語で
# Let's チャレンジ！！

def fact( n )
	return 1 if (0..1).include?( n )
	n * fact(n - 1)
end

puts fact(gets.to_i)