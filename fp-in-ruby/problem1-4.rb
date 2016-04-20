#!/usr/bin/ruby
# 自分の得意な言語で
# Let's チャレンジ！！

s = gets.chars.each_cons(3).map { |e| e.join() }

puts s.count { |e| e == "cat" }