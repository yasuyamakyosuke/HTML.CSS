class DVD < Product
  #スーパークラスでnameとpriceは定義しているから必要なし
  attr_reader :running_time

  def initialize(name, price, running_time)
  	super(name,price)
  	@running_time = running_time
  end
end

dvd = DVD.new('A great movie',1000,120)
dvd.name
dvd.price
dvd.running_time
