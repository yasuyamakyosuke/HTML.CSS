class User
	def initialize(name)
	  @name = name
	end

	#self.をつけることによりクラスメソッドとなる
	def self.create_users(names)
		names.map do |name|
		   User.new(name)
		end
	end

	#下記はインスタンスメソッド
	def hello
	  "Hello, I am #{@name}."
	end
end

names = ['Alice', 'Bob', 'Carol']

#下記で呼び出しているのはクラスメソッド
  users = User.create_users(names)
  users each do |user|
#下記はインスタンスメソッド
  	puts user.hello
  end
