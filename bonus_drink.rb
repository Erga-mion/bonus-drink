class BonusDrink
  def self.total_count_for(amount)
    total = emp = amount       # トータルで飲んだ飲み物・空き瓶の数に,購入した飲み物の本数を加える. 
    while emp >= 3             # 空き瓶の本数が3以上の場合,新しい飲み物に交換できる
      total += emp / 3         # 空き瓶3本で新しい飲み物に交換でき,その本数分をトータルで飲んだ飲み物の数に加える
      emp = emp / 3 + emp % 3  # 空き瓶で交換した飲み物を飲んだ後の空き瓶,また先ほど飲み物に交換できなかった余った空き瓶の合計が,空き瓶の数になる
    end
    total                      # 空き瓶が2本以下になったら,新たに飲み物に交換できないので終了
  end
end