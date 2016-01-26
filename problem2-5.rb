# 自分の得意な言語で
# Let's チャレンジ！！

c1, p1 = gets.split(' ').map(&:to_i)
c2, p2 = gets.split(' ').map(&:to_i)
if c1 * p2 > c2 * p1 then
	puts 1
else
	puts 2
end