# 自分の得意な言語で
# Let's チャレンジ！！

# the code below will exceed the stack limit,
# because ruby didn't support tail call optimisation.

def reduce( t )
	while t % 10 == 0 do t /= 10 end
	t % 100000000000
end

def resize( t )
	t % 1000000000
end

def fact_m( ans, n )
	return resize( ans ) if (0..1).include?( n )
	fact_m( reduce( ans * reduce( n ) ), n - 1 )
end

puts fact_m( 1, gets.to_i )