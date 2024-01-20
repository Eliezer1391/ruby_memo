require "csv"  

puts "1(新規でメモを作成)2(既存のメモを編集する)"
  memo_type = gets.to_s
  puts "選択：" + memo_type
  input_number = memo_type.chomp
 
  
 if input_number == "1"
  puts "新規でメモを作成します。拡張子を除いたファイル名を入力してください。"
  file_name = gets.chomp
  
  puts"メモしたい内容を記入して下さい。"
  puts"完了したら、Ctrl+Dを押して下さい。"
  input_memo = STDIN.read
  memo = input_memo.chomp
  
  CSV.open("#{file_name}.csv" , "w") do |csv|
  csv.puts ["#{memo}"]
  end
 
 elsif input_number == "2"
  puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください。"
  name= gets.chomp
  require 'csv'
  memo_list=CSV.read("#{name}.csv") 
  p memo_list
  puts"編集したい内容を入力してください"
  puts "終了後、Ctrl + D　を押します。"
  input_memo = STDIN.read
  memo = input_memo.chomp
  CSV.open("#{name}.csv","a") do |csv|
  csv.puts ["#{memo}"]
 end

 elsif input_number != ("1" && "2")
  puts "1か2の数字を入力してください"
  memo_type = gets.to_s
  puts "選択：" + memo_type
  input_number = memo_type.chomp
end


  if input_number == "1"
    puts "新規でメモを作成します。拡張子を除いたファイル名を入力してください。"
    file_name = gets.chomp
    
    puts"メモしたい内容を記入して下さい。"
    puts"完了したら、Ctrl+Dを押して下さい。"
    input_memo = STDIN.read
    memo = input_memo.chomp
    
    CSV.open("#{file_name}.csv" , "w") do |csv|
    csv.puts ["#{memo}"]
    end
   
   elsif input_number == "2"
    puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください。"
    name= gets.chomp
    require 'csv'
    memo_list=CSV.read("#{name}.csv") 
    p memo_list
    puts"編集したい内容を入力してください"
    puts "終了後、Ctrl + D　を押します。"
    input_memo = STDIN.read
    memo = input_memo.chomp
    CSV.open("#{name}.csv","a") do |csv|
    csv.puts ["#{memo}"]
   end

  end
  