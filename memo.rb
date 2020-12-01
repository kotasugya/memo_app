require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i
puts "拡張子を除いたファイルを入力してください"
filename = gets.chomp!

def to_do
  puts "メモしたい内容を記入してください"
  memo_contents = gets.to_s 
  puts "完了したらctrl + Dをおします。"
end

to_do

if memo_type == 1
  CSV.open("#{filename}.csv", "w") do |content|
    content << [memo_contents]
  end
elsif memo_type == 2
  CSV.open("#{filename}.csv", "a") do |content|
    content << [memo_contents]
  end
end