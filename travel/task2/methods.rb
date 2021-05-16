require "pry"

# プランの表示(配列)
def disp_plans(plans)
  puts "旅行のプランを選択してください。"
  # 配列を元にeachし表示
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行(#{plan[:price]}円)"
  end
end


# プランの選択(プランの配列)
def choose_plan(plans)
  while true
    # 数字で選択してもらう
    print "プランの番号を選択  > "
    # 数字を受け取る(整数化)
    select_plan_num = gets.to_i
    # 入力値の判定
    break if (1..3).include?(select_plan_num)
    puts "1〜3の番号で入力してください。"
  end
  # 受け取った数字を配列に適用させる
  plans[select_plan_num - 1]
end

# 人数の選択(場所名)
def decide_number_of_tourists(chosen_plan)
  # 場所の確認と人数を確認
  puts "#{chosen_plan[:place]}旅行ですね。"
  puts "何名で予約されますか？"
  # 人数を受け取る(整数化)
  while true
    print "人数を入力  > "
    number_of_tourists = gets.to_i
    # 不正値はループで再入力
    break if number_of_tourists >= 1
    puts "1以上を入力してください"
  end
  number_of_tourists
end

# 合計金額の提示(場所と人数)
def calculation_total(chosen_plan, number_of_tourists)
  # 人数を元に合計金額を出す
  total_price = chosen_plan[:price] * number_of_tourists
  # 5人以上(>=)であれば10%割引
  if number_of_tourists >= 5
    puts "5名以上ですので10%割引となります"
    total_price *= 0.9
  end
  # まいどあり
  puts "合計料金は#{total_price.floor}円になります。"
end
