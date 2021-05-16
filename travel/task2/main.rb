require "./methods"

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

# プラン一覧の表示
disp_plans(plans)

# choose_planの最後の実行結果を変数に代入
chosen_plan = choose_plan(plans)

# 選択された旅行先の復唱と人数を決める
number_of_tourists = decide_number_of_tourists(chosen_plan)

#　一人の旅行代金と人数を使い合計金額を出す
calculate_charges(chosen_plan, number_of_tourists)
