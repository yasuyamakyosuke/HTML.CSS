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