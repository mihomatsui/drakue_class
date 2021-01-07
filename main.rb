class Brave < Character
  def attack(monster)
    # 勇者がモンスターに攻撃する
    while true
    end
  end
end

class Monster < Character
  def attack(brave)
    while true
    end
  end
end

class Character
  attr_acccessor :name, :hp, :offense, :defense
  def initialize(name:, hp:, offense:, defense:)
    @name = name
    @hp = hp
    @offense = offense
    @defense = defense
  end
end

# クラス:Character
# 情報:name,hp,offense(攻め),defense(防御)
# 役割：-(なし。存在のみ)

# クラス:Brave
# 情報:Character
# 役割：モンスターに攻撃する、モンスターからダメージを受ける

# クラス:Monster
# 情報:Character
# 役割：勇者に攻撃する、勇者からダメージを受ける

#インスタンスを生成する
brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster1 = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)
monster2 = Monster.new(name: "シドー", hp: 250, offense: 255, defense: 255)

brave.attack(monster)
monster.attack(brave)
