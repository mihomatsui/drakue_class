class Character
  attr_accessor :name, :hp, :offense, :defense
  def initialize(name:, hp:, offense:, defense:)
    @name = name
    @hp = hp
    @offense = offense
    @defense = defense
  end
end

class Brave < Character
  def attack(monster)
    # 勇者がモンスターに攻撃する

    #ダメージ計算式
    damage = offense - monster.defense / 2
    puts "#{monster.name} があらわれた！"
    puts "#{@name} の攻撃!"
    puts "#{monster.name}に#{damage} のダメージを与えた！"
  end
end

class Monster < Character
  def attack(brave)
    # モンスターが勇者に攻撃する
    #ダメージ計算式
    damage = offense - brave.defense / 2
    puts "#{@name} の攻撃!"
    puts "#{brave.name} は #{damage} のダメージを受けた！"
  end
end


# 実体を生成する部分、呼び出し部分 -------------------
#インスタンスを生成する
  brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
  monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)

# 勇者がモンスターを攻撃する
  brave.attack(monster)
# モンスターが勇者を攻撃する
  monster.attack(brave)
