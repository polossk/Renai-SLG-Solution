#!/usr/bin/ruby
# 自分の得意な言語で
# Let's チャレンジ！！

def id2xy( id, m )
	return id / m, id % m
end

grid, gold = [], []
n = gets.to_i
n.times { grid << gets.split(' ').map(&:to_i) }
m = gets.to_i
m.times { gold << gets.split(' ').map(&:to_i) }

l = n - m + 1
ans = (0 ... l * l).select { |id|
	i, j = id2xy( id, l )
	(0 ... m * m).all? { |nd|
		dx, dy = id2xy( nd, m )
		grid[i + dx][j + dy] == gold[dx][dy]
	}
}
x, y = id2xy(ans[0], l)

puts [x, y].join(' ')