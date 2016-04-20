#!/usr/bin/ruby
# 自分の得意な言語で
# Let's チャレンジ！！

def min( a, b )
	a < b ? a : b
end

def putChar( word, num, limit )
	print word * min(num, limit)
end

def putString( isFirst, num, limit )
	return nil if limit < 0
	putChar( isFirst ? 'R' : 'W', num, limit)
	putString( !isFirst, num, limit - num)
end

n = gets.to_i
m = gets.to_i
putString( true, n, m )