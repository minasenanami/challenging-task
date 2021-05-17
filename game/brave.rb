class Brave < Character
  def attack(monster)
    damage = calculate_damage(monster)
    puts "#{@name} の攻撃!"
    monster.hp -= damage
    puts "#{monster.name} に #{damage} のダメージを与えた!"
    monster.hp = 0 if monster.hp < 0
  end
end

# ダメージ計算した変数を持つ
# 攻撃宣言
# hpからダメージ分を引く
# ダメージ宣言
# オーバーキル時に-表示しないように0を代入する
