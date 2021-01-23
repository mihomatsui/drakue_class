require "./character"


class Brave < Character

  def attack(monster)
    # 勇者がモンスターに攻撃する
    puts "#{@name} の攻撃!"
    #モンスターが受けるダメージの計算
    damage = calculate_damage(target: monster)

    # モンスターのHPから計算したダメージを引く
    cause_damage(target: monster,damage: damage)

  end

  private
    def calculate_damage(**params)
      target = params[:target]
      
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
    # 勇者が受けるダメージの計算
    damage = @offense - brave.defense / 2
    brave.hp -= damage
    brave.hp = 0 if brave.hp < 0
    # メッセージの追記
    puts "#{@name} の攻撃!"
    puts "#{brave.name} に #{damage} のダメージを与えた!"
  end
end










# 実体を生成する部分、呼び出し部分 -------------------
#インスタンスを生成する
  brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
  monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
  # monster = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 255)

puts "#{monster.name} があらわれた!"
# 勇者がモンスターを攻撃する
brave.attack(monster)
# モンスターが勇者を攻撃する
monster.attack(brave)

puts <<~TEXT
*=*=*=*=*=*=*=*=*=*=*
【#{brave.name}】HP: #{brave.hp}
【#{monster.name}】HP: #{monster.hp}
*=*=*=*=*=*=*=*=*=*=*
TEXT
