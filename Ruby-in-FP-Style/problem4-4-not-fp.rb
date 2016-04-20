#!/usr/bin/ruby
# 自分の得意な言語で
# Let's チャレンジ！！

def reduce( t )
	while t % 10 == 0 do t /= 10 end
	t % 100000000000
end

def resize( t )
	t % 1000000000
end

ans = 1
n = gets.to_i
n.times { |i|
	now = i + 1
	ans = reduce( reduce( now ) * ans )
}
puts resize( ans )