require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i
puts "拡張子を除いたファイルを入力してください"
filename = gets.chomp!

if memo_type == 1
	puts "メモしたい内容を記入してください"
	memo_contents = gets.to_s 
	puts "完了したらctrl + Dをおします。"
	CSV.open("#{filename}.csv", "w") do |content|
		content << [memo_contents]
	end
end