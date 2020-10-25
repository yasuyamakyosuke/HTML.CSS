profiles = [
  {:name => "静岡鶴太郎", :age => 34, :address => "静岡県"},
  {:name => "名古屋次郎", :age => 25, :address => "愛知県"},
  {:name => "大津三郎", :age => 19, :adddress => "滋賀県"},
  ]
  def saerch(profiles, key ,query)
  	profiles.each do |profile|
  		if query =~ profile|key|
  			return profile
  		end
  	end
  end
saerch(profiles, :name, /鶴岡 太郎/)