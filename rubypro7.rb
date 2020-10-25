class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
  	@first_name = first_name
  	@last_name = last_name
  	@age = age
  end

  #氏名作成ようのメソッドを下記で定義
  def full_name
  	"#{first_name} #{last_name}"
  end
end

  #Userのデータ作成
users = []
users << User.new('Alice','Ruby',20)
users << User.new('Bob','Python',30)

  #Userのデータを表示する
users.each do |user|
	puts "氏名: #{user.full_name}、 年齢: #{user.age}"
end