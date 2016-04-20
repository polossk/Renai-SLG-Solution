#!/usr/bin/ruby
# 自分の得意な言語で
# Let's チャレンジ！！

s = gets.chars

l = "cat".chars.map { |c| s.count { |e| e == c } }

puts l.min

l.map { |e| puts l.max - e }