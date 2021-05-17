class Monster < Character
  def attack(brave)
    damage = calculate_damage(brave)
    puts "#{@name} の攻撃!"
    brave.hp -= damage
    puts "#{brave.name} は #{damage} のダメージを受けた!"
    brave.hp = 0 if brave.hp < 0
  end
end

# ダメージ計算した変数を持つ
# 攻撃宣言
# hpからダメージ分を引く
# ダメージ宣言
# オーバーキル時に-表示しないように0を代入する
