class Product
	attr_reader :name, :price

	def initialize(name, price)
	  @name = name
	  @price = price
	end
end

product = Product.new('A greate movie',1000)
product.name
product.price