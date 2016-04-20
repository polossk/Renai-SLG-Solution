#!/usr/bin/ruby
# 自分の得意な言語で
# Let's チャレンジ！！

def readSection( n, x_, y_ )
	return x_.sort, y_.sort if n == 0
	d, diff = gets.split(' ').map(&:to_i)
	if d == 0
		x_ << diff
	else
		y_ << diff
	end
	readSection( n - 1, x_, y_ )
end

def diffArray( arr )
	return arr if arr.length < 2
	brr = [0] + arr[0..-2]
	arr.each_with_index do |e, i|
		brr[i] = e - brr[i]
	end
	brr
end

x, y, z, n = gets.split(' ').map(&:to_i)
x_, y_ = readSection( n, [x], [y] )
xl = diffArray(x_).min
yl = diffArray(y_).min
puts xl * yl * z