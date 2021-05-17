require "./character.rb"
require "./brave.rb"
require "./monster.rb"
require "pry"

def battle
  brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
  monsters =[
    Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80),
    Monster.new(name: "シドー", hp: 250, offense: 255, defense: 255)
  ]
  monster = monsters.sample

  puts "#{monster.name}があらわれた"

  # 戦闘のループ
    # 敵と自分のHPが0以上の時にループする
    # 0を含まないのはオーバーキル時に0が入るので含めてしまうと無限ループする
    # 毎ターンの両者の残HPを表示
    # 決着時(どちらかのhpが0の時)メッセージを出す。
  while brave.hp > 0 && monster.hp > 0
    brave.attack(monster) if brave.hp > 0
    monster.attack(brave) if monster.hp > 0
    puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
    TEXT
  end
  puts "#{brave.name}はしんでしまった!" if brave.hp == 0
  puts "#{monster.name}をやっつけた" if monster.hp == 0
end

battle
