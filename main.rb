require "./character"


class Brave < Character

  def attack(monster)
    # 勇者がモンスターに攻撃する
    puts "#{@name} の攻撃!"
    #モンスターが受けるダメージの計算
    damage = calculate_damage(monster)

    # モンスターのHPから計算したダメージを引く
    cause_damage(target: monster,damage: damage)

  end

  private
    def calculate_damage(target)
      @offense - target.defense / 2
    end

    def cause_damage(**params)
      damage = params[:damage]
      target = params[:target]

      target.hp -= damage
      target.hp = 0 if target.hp < 0
      puts "#{target.name} に #{damage} のダメージを与えた!"
    end
end

class Monster < Character
  def attack(brave)
    # モンスターが勇者に攻撃する
    puts "#{@name} の攻撃!"
    # 勇者が受けるダメージの計算
    damage = calculate_damage(brave)
    cause_damage(target: brave, damage: damage)
  end

  private
    def calculate_damage(target)
      @offense - target.defense / 2
    end

    def cause_damage(**params)
      damage = params[:damage]
      target = params[:target]

      target.hp -= damage
      target.hp = 0 if target.hp < 0
      puts "#{target.name} に #{damage} のダメージを与えた!"
    end
end


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
