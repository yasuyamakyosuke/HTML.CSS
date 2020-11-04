#今回はmethod1にのみ例外処理を記載
def method_1
  puts 'method_1 start.'
  begin
  	method_2
  rescue
    puts '例外が発生致しました'
  end
  puts 'method_1 end.'
end

def method_2
  puts 'mehotd_2 start.'
  method_3
  puts 'method_2 end'
end

def method_3
	puts 'method_3 start.'
	1/0
	puts 'method_3 end.'
end

method_1

#実際に行われる処理
# method_1 start.
# method_2 start.
# method_3 start.
# 例外が発生しました
# method_1 end.

#例外処理を複数指定する場合は以下のようにする
#rescue節を複数書く場合

begin
  'abc'.foo
rescue ZeroDivisionError
  puts "0で除算しました"
rescue NoMethodError
  puts "存在しないメソッドが呼び出されました"
end
#=>存在しないメソッドが呼び出されました

# rescue節に複数の例外クラスを指定することもできる
begin
  'abc'.foo
rescue ZeroDivisionError,NoMethodError
  puts "0で除算したか、存在しないメソッドが呼び出されました"
end
#=> 0で除算したか、存在しないメソッドが呼び出されました

