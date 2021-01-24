require './character'

class Monster < Character
  def attack(brave)
    # モンスターが勇者に攻撃する
    puts "#{@name} の攻撃!"
    # 勇者が受けるダメージの計算
    damage = calculate_damage(brave)
    cause_damage(target: brave, damage: damage)
  end
end
