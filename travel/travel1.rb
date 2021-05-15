# require "pry"


# プラン一覧のデータを作る
plans = [
  {place: "沖縄旅行", price: 10000},
  {place: "北海道旅行", price: 20000},
  {place: "九州旅行", price: 15000},
]

# プラン一覧の表示
puts <<~TEXT
  旅行プランを選択して下さい。

  1. 沖縄旅行（10000円）
  2. 北海道旅行（20000円）
  3. 九州旅行（15000円）

TEXT

# 番号を入力するよう促す
# 番号を受け取る
while true
  print "プランの番号を選択  >  "
  plan_num = gets.to_i
  break if (1..3).include?(plan_num)
  puts "1 ~ 3 の中で選んでください"
end

# 番号に応じたプランを返す
choice_plan = plans[plan_num - 1]
puts "#{choice_plan[:place]}ですね。"


# 人数を聞く
# 人数を受け取る
puts "何名で予約されますか？"
while true
  print "人数を入力  >  "
  numbers = gets.to_i
  break if numbers > 0
  puts "1以上を入力してください。"
end

# 人数を復唱
puts "#{numbers}名ですね"

# 5名以上は10%割引にする
total_price = choice_plan[:price] * numbers

if numbers >= 5
  total_price *= 0.9
  puts "5名以上ですので10%割引となります"
end


# 合計金額を伝える
puts "合計料金は#{total_price.floor}円になります。"
