require "./brave"
require "./monster"


# 実体を生成する部分、呼び出し部分 -------------------
#インスタンスを生成する
  brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
  monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
  monster = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 255)

puts "#{monster.name} があらわれた!"

loop do
  # 勇者がモンスターを攻撃する
  brave.attack(monster)

  # モンスターのHPが0になったら無限ループ終了
  break if monster.hp <= 0

  # モンスターが勇者を攻撃する
  monster.attack(brave)

  # 勇者のHPが0になったら無限ループ終了
  break if brave.hp <= 0

  puts <<~TEXT
  *=*=*=*=*=*=*=*=*=*=*
  【#{brave.name}】HP: #{brave.hp}
  【#{monster.name}】HP: #{monster.hp}
  *=*=*=*=*=*=*=*=*=*=*
  TEXT
end

if brave.hp <= 0 || monster.hp <= 0
  puts <<~TEXT
  *=*=*=*=*=*=*=*=*=*=*
  【#{brave.name}】HP: #{brave.hp}
  【#{monster.name}】HP: #{monster.hp}
  *=*=*=*=*=*=*=*=*=*=*
  TEXT
end

battle_result = brave.hp > 0

if battle_result
  puts "#{monster.name} をやっつけた!"
else
  puts "#{brave.name} はしんでしまった!"
end
