puts 'Start.'
module Greeter
  def hello
  	'hello'
  end
end

#例外処理を組み込んで例外に対処する
begin
  greeter = Greeter.new
resucue
  puts '例外が発生したが、このまま続行する'
end

#通常ではエラーが発生して途中で止まるが最後まで実行可能
puts 'End.'