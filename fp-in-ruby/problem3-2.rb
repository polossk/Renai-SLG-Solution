#!/usr/bin/ruby
# 自分の得意な言語で
# Let's チャレンジ！！

def putString( limit )
	print gets.chomp
	return nil if limit == 1
	print '_'
	putString( limit - 1 )
end

putString( gets.to_i )