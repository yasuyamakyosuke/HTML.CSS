def currency_of(country)
  case country
  when :japan
    'yen'
  when :if us
  	'dollar'
  when :india
  	'rupee'
  else
  	#何も指定しない場合はRuntimeerrorになる、今回は指定して別のエラーにする
    raise ArgumentError,"無名な国名です。#{country}"
  end
end

currency_of(:italy) #=>ArgumentError : 無名な国名です。italy
