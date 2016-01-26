# 自分の得意な言語で
# Let's チャレンジ！！

def reduce( t )
	while t % 10 == 0 do t /= 10 end
	t % 100000000000
end

def resize( t )
	t % 1000000000
end

def fact_m( n )
	# the code below will exceed the stack limit,
	# because ruby didn't support tail call optimisation.
	# so i rewrite it to loop-style
	# <code>
	# return 1 if [0..1].include?( n )
	# reduce( n * fact_m( n - 1 ) )
	# </code>
	ans = 1
	n.times do |i|
		now = i + 1
		ans = reduce( now * ans )
	end
	resize( ans )
end

puts fact_m( gets.to_i )