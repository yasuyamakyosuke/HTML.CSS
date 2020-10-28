$val = 0

class Count
  def self.up
    $val = $val + 1
    $val == 3 ? true : false
  end
end

[*1..10].any? do
  Count.up
end
# Enumerable any?はブロックの戻り値がtrueになると繰り返しをその時点で止めます。
# 繰り返しが止まるのは3回目の繰り返し、つまり$valが3になった時点です。

$val = 0

class Count
  def self.up
    $val = $val + 1
    $val == 3 ? true : false
  end
end

[*1..10].select do
  Count.up
end

# Enumerable selectはブロックの戻り値がtrueになる要素を配列にして返します。
# レシーバーをすべて走査して繰り返しを終了します。



p [1, 2, 3].inject{|x, y| x + y ** 2} rescue p $!
# 下記の順番で処理
# 1 = 0 + 1 ** 2
# 5 = 1 + 2 ** 2
# 14 = 5 + 3 ** 2
p [1, 2, 3].inject(0){|x, y| x + y ** 2} rescue p $!
# 下記の順番で処理
# 5 = 1 + 2 ** 2
# 14 = 5 + 3 ** 2
p [1, 2, 3].inject([]){|x, y| x << y ** 2} rescue p $!
# 下記の順番で処理
# [1] = [] << 1 ** 2
# [1, 4] = [1] << 2 ** 2
# [1, 4, 9] = [1, 4] << 3 ** 2
p [1, 2, 3].inject do|x, y| x + y ** 2 end rescue p $!
# 4行目は以下のように、解釈されます。
# [1, 2, 3].injectまでがpメソッドの引数となるため、pメソッドへブロックが不正に渡されるため、エラーとなります。