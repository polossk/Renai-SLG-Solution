#!/usr/bin/ruby
# 自分の得意な言語で
# Let's チャレンジ！！

n = gets.to_i
n.times {
	m = gets.to_i / 3
	hoge = 25 * 60 - m
	hh = hoge / 60
	hh = (hh > 23) ? hh - 24: hh
	mm = hoge % 60
	puts [hh, mm].map { |e| "%02d" % e }.join(":")
}