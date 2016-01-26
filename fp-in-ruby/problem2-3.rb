# 自分の得意な言語で
# Let's チャレンジ！！

votes = []

5.times { votes << (gets.chomp) }

count = votes.map { |e| e == "yes" ? 1 : -1 }.inject(:+)

puts count > 0 ? "yes" : "no"