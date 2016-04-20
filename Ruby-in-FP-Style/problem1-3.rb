#!/usr/bin/ruby
# 自分の得意な言語で
# Let's チャレンジ！！

n = gets
na = gets
own = gets.split(' ').map(&:to_i)
nb = gets
need = gets.split(' ').map(&:to_i)

buy = need.select { |e| !own.include?(e) }.sort

if buy.length == 0 then
	buy_s = "None"
else
	buy_s = buy.join(' ')

end

puts buy_s